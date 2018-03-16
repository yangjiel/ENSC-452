
#include "display_api.h"
#include <stdlib.h>

#define DISPLAY_MEMORY_BASE	0x01000000

// define the axis of the plot.
//static unsigned int _canvas_margin, _canvas_x_size, _canvas_y_size, _canvas_y_mid;
static Rect topwall,rightwall,leftwall;
static Rect paddle;
static Circle ball;
//static Rect _canvas_rect;
static u32 _background_color = COLOR_BLACK;
static u32 _canvas_color = COLOR_WHITE;

void define_3_walls(){
	topwall.x0=0; topwall.y0=0; topwall.xsz=800; topwall.ysz=20;
	rightwall.x0=0; rightwall.y0=20; rightwall.xsz=20; rightwall.ysz=580;
	leftwall.x0=780; leftwall.y0=20; leftwall.xsz=20; leftwall.ysz=580;
}

typedef struct {
	int x, y;
} Point;

typedef struct {
	int length;
	Point* points;
} PointList;

void plot_init() {
	xil_printf("1\n\r");
	display_init(DISPLAY_MEMORY_BASE);
	display_fill_screen(_background_color);
	xil_printf("2\n\r");
	display_swap_buffers();
}


void plot_outline() {
//	display_fill_screen(_background_color);
	//define_3_walls();
	display_fill_screen(_background_color);
//	xil_printf("3\n\r");
	//display_draw_rect(0xff99ff00, topwall);
	//display_draw_rect(0xff99ff00, rightwall);
	//display_draw_rect(0xff99ff00, leftwall);
//	xil_printf("4\n\r");
}

void plot_paddle(int x, int y, u32 color){
	paddle.x0=x;
	paddle.y0=y;
	paddle.xsz=30;
	paddle.ysz=20;
	display_draw_rect(color, paddle);
}

void plot_circle(int x, int y, int r, u32 color){
	ball.r=r;
	ball.x0=x;
	ball.y0=y;
	display_draw_circle(color, ball);
}
