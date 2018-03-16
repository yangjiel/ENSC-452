/* Simplified API for doing basic operations with the VDMA
 * Wesley Kendall 2018
 *
 */

/*** Include file ***/
#ifndef DISPLAY_API_H_
#define DISPLAY_API_H_

#include "xparameters.h"
#include "xstatus.h"
#include "xil_exception.h"
#include "xil_assert.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xil_cache.h"
#include "vdma_api.h"
#include "stdlib.h"
#include "math.h"

#define COLOR_RED   0xFF000000
#define COLOR_GREEN 0x00FF0000
#define COLOR_BLUE  0x0000FF00
#define COLOR_BLUE2 0x000000FF
#define COLOR_WHITE  0xFFFFFFFF
#define COLOR_BLACK  0x00000000

#define DISPLAY_X_SIZE 800
#define DISPLAY_Y_SIZE 600
#define DISPLAY_TOTAL_MEM_SIZE DISPLAY_Y_SIZE*DISPLAY_X_SIZE

#define N_FRAME_BUFFERS 2
//
int active_buffer_i = 0;
int writable_buffer_i = 1;
u32* buffer[N_FRAME_BUFFERS];
XAxiVdma VdmaInstancePtr;


typedef struct {
	int x0, y0, x1, y1;
} Line;

typedef struct {
	int x0, y0, xsz, ysz;
} Rect;

typedef struct {
	int x0,y0,r;
} Circle;

int display_init(u32 srcBuffer) {
 	int status;
 	status = VDMAReset(&VdmaInstancePtr);
	if (status != XST_SUCCESS) {
		xil_printf("Reset failed\n");
		return XST_FAILURE;
	};

	// RUN VDMA CONTINUOUSLY
	status = VDMAInit(&VdmaInstancePtr, 0, DISPLAY_X_SIZE, DISPLAY_Y_SIZE,
						srcBuffer);
	if (status != XST_SUCCESS) {
		xil_printf("Transfer of frames failed with error = %d\r\n", status);
		return XST_FAILURE;
	} else {
		xil_printf("Transfer of frames started \r\n");
	}

	for (int i=0; i < N_FRAME_BUFFERS; i++) {
		buffer[i] = (u32*) vdma_context->ReadCfg.FrameStoreStartAddr[i];
	}
	return XST_SUCCESS;
}


void display_fill_screen(u32 color) {
	for (u32 i=0; i < (DISPLAY_X_SIZE*DISPLAY_Y_SIZE); i++) {
		((u32*)buffer[writable_buffer_i])[i] = color;
	}
}

void display_draw_rect(u32 color, Rect rect) {
	for (u32 i=rect.x0; i < (rect.x0 + rect.xsz); i++) {
		for (u32 j=rect.y0; j < (rect.y0 + rect.ysz); j++) {
			u32 pos = i + j*DISPLAY_X_SIZE;
			if (pos < DISPLAY_TOTAL_MEM_SIZE) {
				((u32*)buffer[writable_buffer_i])[pos] = color;
			}
		}
	}
}

void display_draw_circle(u32 color, Circle ball){
	for (u32 i=(ball.x0-ball.r); i<=(ball.x0+ball.r);i++)
		for (u32 j=(ball.y0-ball.r); j<=(ball.y0+ball.r);j++){
			u32 pos=i+j*DISPLAY_X_SIZE;
			if ((((i-ball.x0)*(i-ball.x0)+(j-ball.y0)*(j-ball.y0))<=(ball.r*ball.r)) && (pos < DISPLAY_TOTAL_MEM_SIZE) )
				((u32*)buffer[writable_buffer_i])[pos] = color;
		}
}

static inline void draw_point(int x, int y, u32 color) {
	int pos = x + y*DISPLAY_X_SIZE;
	if (pos < DISPLAY_TOTAL_MEM_SIZE) {
		((u32*)buffer[writable_buffer_i])[pos] = color;
	}
}

static inline void _draw_line_low(int x0, int y0, int x1, int y1, u32 color) {
	int dx = x1 - x0;
	int dy = y1 - y0;
	int y = y0;
	int yi = 1;
	if (dy < 0) {
		yi = -1;
		dy = -dy;
	}
	if (dy == 0) {
		for (int x=x0; x< x1; x++) {
			draw_point(x, y0, color);
		}
		return;
	}
	int D = (dx << 1) - dy;


	for (int x=x0; x < x1; x++) {
		draw_point(x, y, color);
		if (D > 0) {
			y = y + yi;
			D = D - (dx << 1);
		}
		D = D + (dy << 1);
	}
	return;
}

static inline void _draw_line_high(int x0, int y0, int x1, int y1, u32 color) {
	int dx = x1 - x0;
	int dy = y1 - y0;
	int x = x0;
	int xi = 1;
	if (dx < 0) {
		xi = -1;
		dx = -dx;
	}

	if (dx == 0) {
		for (int y=y0; y < y1; y++) {
			draw_point(x0, y, color);
		}
		return;
	}

	int D = (dx << 1) - dy;


	for (int y=y0; y < y1; y++) {
		draw_point(x, y, color);
		if (D > 0) {
			x = x + xi;
			D = D - (dy << 1);
		}
		D = D + (dx << 1);
	}
	return;
}

// Draw a line segment
// Bresenham's Line Algorithm (no anti-aliasing)
// Borrowed from Wikipedia: https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm
void display_draw_line(Line line, u32 color) {
	if (abs(line.y1- line.y0) < abs(line.x1 -line.x0)) {
		_draw_line_low(line.x0, line.y0, line.x1, line.y1, color);
	}
	else {
		if (line.y0 < line.y1) {
			_draw_line_high(line.x0, line.y0, line.x1, line.y1, color);
		}
		else {
			_draw_line_high(line.x1, line.y1, line.x0, line.y0, color);
		}
	}
}

void display_swap_buffers() {
	Xil_DCacheFlushRange((u32)buffer[writable_buffer_i], DISPLAY_TOTAL_MEM_SIZE*4);
	// access dma to change buffer pointer
	VDMAUpdateParkPtr(writable_buffer_i);
	// update variables
	active_buffer_i   = (active_buffer_i + 1) % N_FRAME_BUFFERS;
	writable_buffer_i = (writable_buffer_i+1) % N_FRAME_BUFFERS;
}


u32* display_get_frame_buffer() {
	return ((u32*) buffer[writable_buffer_i]);
}

#endif //DISPLAY_API_H_
