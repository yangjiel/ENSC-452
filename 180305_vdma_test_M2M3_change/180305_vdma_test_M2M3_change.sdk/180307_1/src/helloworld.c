
#include "plotting_api.h"
#include <xuartps_hw.h>
#include "xstatus.h"
#include "xil_printf.h"
#include "xil_mmu.h"
#include "xil_assert.h"
#include <stdio.h> /* printf */
#include "xscugic.h"
#include "xil_exception.h"
#include "xgpio.h"


#define INTC_DEVICE_ID 				XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID				XPAR_AXI_GPIO_0_DEVICE_ID
#define LFSR_OUT_DEVICE_ID			XPAR_AXI_GPIO_1_DEVICE_ID
#define LFSR_IN_DEVICE_ID			XPAR_AXI_GPIO_2_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID 		XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define BTN_INT 					XGPIO_IR_CH1_MASK /* This is the interrupt mask for channel one */
#define DEBOUNCE_WAIT           	5000
int flag_btnl = 0;
int flag_btnr = 0;
int flag_btnc = 0;
static XGpio BTNInst;
static XScuGic INTCInst;
static XGpio LFSR_OUT;
static XGpio LFSR_IN;
static int btn_value;
int val1, val2, count;

enum
{
	BTNC = 1,
	BTND = 2,
	BTNL = 4,
	BTNR = 8,
	BTNU = 16,
};

int test[4][2] = {{-20,21}, {6, 20}, {-12, 22}, {-36, 17}};
int origin[4][2] = {{35, 35}, {765, 35}, {35, 565}, {765, 565}};

void MatrixTranspose(int src[4][2], int dst[4][2])
{
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 4; j++)
            dst[j][i] = src[i][j];
}

void multiplyMatrices(int firstMatrix[4][2], int secondMatrix[4][2], int mult[4][2])
{
	// Initializing elements of matrix mult to 0.
	for(int i = 0; i < 2; ++i)
		for(int j = 0; j < 4; ++j)
			mult[i][j] = 0;
	// Multiplying matrix firstMatrix and secondMatrix and storing in array mult.
	for(int i = 0; i < 2; ++i)
		for(int j = 0; j < 4; ++j)
			for(int k=0; k < 4; ++k)
				mult[i][j] += firstMatrix[i][k] * secondMatrix[k][j];
}

void divMatrix(int a[4][2],int b[4][2],double c[4][2]){
	int i,j;
    for(i=0; i<2; i++)
    	for(j=0; j<4; j++)
    		c[i][j] = (double) (a[i][j])/(b[i][j]);
}

/* prototypes */
static void btn_irq_handler(void *baseaddr_p);
static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);

//---------------  Interrupt Definition  --------------------------------------------------//
/* irq handler */
static void btn_irq_handler(void *InstancePtr)
{
	/* Ignore additional button presses */
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) != BTN_INT)
	{
		/* Disable GPIO interrupts */
		XGpio_InterruptDisable(&BTNInst, BTN_INT);
		return;
	}
	//-------------BTN Debouncing-------------//
	val1 = XGpio_DiscreteRead(&BTNInst,1);
	if(!val1) return;
	for(count=0; count<DEBOUNCE_WAIT; ++count)
	{
	 val2 =  XGpio_DiscreteRead(&BTNInst, 1);
	 if(val1 != val2) return;
	}
	btn_value=val1;
	//-------------BTN Debouncing-------------//

	switch (btn_value)
	{
		case BTNC:
			xil_printf("BTNC WAS PRESSED\n\r");
			flag_btnc = 1;
			break;
		case BTND:
			xil_printf("BTND WAS PRESSED, Invalid Press\n\r");
			break;
		case BTNL:
			xil_printf("BTNL WAS PRESSED\n\r");
			flag_btnl = 1;
			break;
		case BTNR:
			xil_printf("BTNR WAS PRESSED\n\r");
			flag_btnr = 1;
			break;
		case BTNU:
			xil_printf("BTNU WAS PRESSED, Invalid Press\n\r");
			break;
		default:
			break;
	}
	/* Acknowledge GPIO interrupts */
	(void)XGpio_InterruptClear(&BTNInst, BTN_INT);
	/* Enable GPIO interrupts */
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

static int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;
	/* Interrupt controller initialization */
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;
	/* Interrupt setup function */
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;
	/* Register GPIO interrupt handler */
	status = XScuGic_Connect(&INTCInst,
					  	  	 INTC_GPIO_INTERRUPT_ID,
					  	  	 (Xil_ExceptionHandler)btn_irq_handler,
					  	  	 (void *)GpioInstancePtr);
	if(status != XST_SUCCESS) return XST_FAILURE;
	/* Enable GPIO interrupts */
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);
	/* Enable GPIO interrupts in the controller */
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);
	return XST_SUCCESS;
}

static int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	/* Register GIC interrupt handler */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
			 	 	 	 	 	 XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}
//---------------  Interrupt Definition  --------------------------------------------------//



void my_wait() {
	for (int i=0; i< 1e5; i++) {
		;
	}
}

int init_paddle_x0=385;
int init_paddle_y0=560;
int init_ball_x0=400;
int init_ball_y0=550;
int init_ball_r=10;
int ball_counter=0;

int main(){
//---------------  INTRs  --------------------------------------------------//
	int status;
	/* Initialize Push Buttons */
	status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
	if (status != XST_SUCCESS) return XST_FAILURE;
	/* Set all buttons direction to inputs */
	XGpio_SetDataDirection(&BTNInst, 1, 0xFF);

	/* Initialize interrupt controller */
	status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);
	if (status != XST_SUCCESS) return XST_FAILURE;
//---------------  End of INTRs  -------------------------------------------//

//---------------  LFSR with GPIO  --------------------------------------------------//

	int Status1;
	Status1 = XGpio_Initialize(&LFSR_OUT, LFSR_OUT_DEVICE_ID);
	if (Status1 != XST_SUCCESS) {return XST_FAILURE;}
	int Status2;
	Status2 = XGpio_Initialize(&LFSR_IN, LFSR_IN_DEVICE_ID);
	if (Status2 != XST_SUCCESS) {return XST_FAILURE;}

	//Bits set to 0 are output and bits set to 1 are input.
	//GPIO 1 is 1 bit output, GPIO 2 is 8 bit intput
	XGpio_SetDataDirection(&LFSR_OUT, 1, 0);
	XGpio_SetDataDirection(&LFSR_IN, 1, 0xFF);

	xil_printf("turn on enable\n\r");
	XGpio_DiscreteWrite(&LFSR_OUT, 1, 1);
	xil_printf("now start to read input");
	int value = XGpio_DiscreteRead(&LFSR_IN, 1);
	xil_printf("value is : %i\n\r", value);

//current problem is that, right after i triggerred one interrupt, then every pixel drawing need to be depended on next interrupt
	xil_printf("Initializing plot");
	plot_init();
	plot_outline();
	plot_circle(35, 35, 3, 0xff99ff00);
	plot_circle(765, 35, 3, 0xff99ff00);
	plot_circle(35, 565, 3, 0xff99ff00);
	plot_circle(765, 565, 3, 0xff99ff00);
	display_swap_buffers();
	int calibrate = 0;
	int x = 0, y = 0;
	int deltaX1 = 0, deltaX2 = 0, deltaY1 = 0, deltaY2 = 0;
	int magx = 0, magy = 0, magz = 0, btn = 0;
	int *gpio = 0x41220000;
	//int temp[4][2];
	//MatrixTranspose(test, temp);
	//test = temp;
	//MatrixTranspose(origin, temp);
	//origin = temp;
	//double try[4][2];
	//divMatrix(origin, test, try);
	//double try2[4][2];
	//MatrixTranspose(try, try2);
//	for (int i = 0; i < 2; i++)
	while(1) {
		plot_outline();
		int value = XGpio_DiscreteRead(&LFSR_IN, 1);
		xil_printf("value is : %i\n\r", value);
		if (inbyte() == '-'){
			inbyte();
			inbyte();
			magx = 0;
			magy = 0;
			magz = 0;
			for (int i = 0; i < 4; i++){
				magx |= inbyte() << i * 8;
				magy |= inbyte() << i * 8;
				magz |= inbyte() << i * 8;
//				array1[i] = inbyte();
//				array2[i] = inbyte();
//				array3[i] = inbyte();
			}
			btn = inbyte();
			if (abs(magy) < 30)
				magy = 0;
			else if (abs(magz) < 30)
				magz = 0;
			if (calibrate != 5) {
				x = x + magy;
				y = y + magz;
			}
			else {
				x = x + magy / deltaX1;
				y = y + magz / deltaY1;
				if (x > 800)
					x = 770;
				else if (x < 0)
					x = 0;
				if (y > 600)
					y = 580;
				else if(y < 0)
					y = 0;
			}
			if (btn == 1 && calibrate < 5){
				switch (calibrate){
					case 0:
						//initP1[0] = magx;
						//initP1[1] = magy;
						x = 0;
						y = 0;
						calibrate++;
						break;
					case 1:
						//initP2[0] = magx;
						//initP2[1] = magy;
						deltaX1 = x;
						x = 0;
						y = 0;
						calibrate++;
						break;
					case 2:
						//initP3[0] = magx;
						//initP3[1] = magy;
						deltaY1 = y;
						x = 0;
						y = 0;
						calibrate++;
						break;
					case 3:
						//initP4[0] = magx;
						//initP4[1] = magy;
						//avgX1 = (initP1[0] + initP3[0]) / 2;
						//avgY1 = (initP1[1] + initP2[1]) / 2;
						//avgX2 = (initP2[0] + initP4[0]) / 2;
						//avgY2 = (initP3[1] + initP4[1]) / 2;
						//ratX = (avgX2 - avgX1) / (570);
						//ratY = (avgY2 - avgY1) / (410);
						deltaX2 = -x;
						x = 0;
						y = 0;
						calibrate++;
						break;
					case 4:
						deltaY2 = -y;
						deltaX1 = (deltaX1 + deltaX2) / 2 / 730;
						deltaY1 = (deltaY1 + deltaY2) / 2 / 530;
						x = 35;
						y = 35;
						calibrate++;
						break;
				}
			}
			else {
				*gpio = btn;
				plot_paddle(x,y, 0x9999ff00);
				if (btn == 1)
					display_fill_screen(_canvas_color);
			}
		}
		if (inbyte() == 'p'){
			//XGpioPs_WritePin(&psGpioInstancePtr,iPinNumber,0);
			calibrate = 0;
			xil_printf("X is: %d\n\r", x);
			xil_printf("deltaX1 is: %d\n\r", deltaX1);
			xil_printf("btn is: %d\n\r", btn);
			xil_printf("calibrate is: %d\n\r", calibrate);
//			for (int i = 0; i < 4; i++){
//				xil_printf("array1[%d] is: %d\n\r", i, array1[i]);
//				xil_printf("array2[%d] is: %d\n\r", i, array2[i]);
//				xil_printf("array3[%d] is: %d\n\r", i, array3[i]);
//			}
		}
//		if (flag_btnc == 1){
//			init_paddle_x0=385;
//			init_paddle_y0=560;
//			init_ball_x0=400;
//			init_ball_y0=550;
//			init_ball_r=10;
//			ball_counter=0;
//			flag_btnc = 0;
//		}
//		if (flag_btnr == 1 && init_paddle_x0 < 730){
//			init_paddle_x0 += 30;
//			xil_printf("paddle_x0: %i \n\r", init_paddle_x0);
//			flag_btnr = 0;
//		}
//		if (flag_btnl == 1 && init_paddle_x0 >50){
//			init_paddle_x0 -= 30;
//			xil_printf("paddle_x0: %i \n\r", init_paddle_x0);
//			flag_btnl = 0;
//		}
//		ball_counter+=1;
////		xil_printf("ball_counter: %i\n\r", ball_counter);
//		if (ball_counter==5 && init_ball_x0 > 50){
//			ball_counter=0;
//			init_ball_x0-=3;
//			init_ball_y0-=4;
//		}
		plot_circle(35, 35, 3, 0xff99ff00);
		plot_circle(765, 35, 3, 0xff99ff00);
		plot_circle(35, 565, 3, 0xff99ff00);
		plot_circle(765, 565, 3, 0xff99ff00);
		display_swap_buffers();
		my_wait();
	}

}
