/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "main.h"
#include "data.h"


int main()
{
    init_platform();

    print("\nHello World...\n");

    COMPLEXD in_stream[2*nUSC], out_stream[nUSC];

    int k = 0;
    for(int i=0; i<nUSC; i++)
    	in_stream[k++] = preambleIn[i];
    for(int i=0; i<nUSC; i++)
    	in_stream[k++] = trainingSym[i];

    XAxiDma axidma;
    XAxiDma_Config* dma_cfgptr;

    dma_cfgptr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);

    int status = XAxiDma_CfgInitialize(&axidma, dma_cfgptr);
    if(status != XST_SUCCESS) {
    	printf("\nDMA initialization failed\n");
    	return XST_FAILURE;
    }

    // Time variables
	XTime t_start, t_end;
	int del_t; float exec_time;

	// Start timing
	XTime_SetTime(0);
	XTime_GetTime(&t_start);

    Xil_DCacheFlushRange((UINTPTR)in_stream, 2*nUSC*sizeof(COMPLEXD));

    XAxiDma_SimpleTransfer(&axidma, (UINTPTR)out_stream, sizeof(COMPLEXD)*nUSC, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_SimpleTransfer(&axidma, (UINTPTR)in_stream, sizeof(COMPLEXD)*nUSC*2, XAXIDMA_DMA_TO_DEVICE);

    Xil_DCacheInvalidateRange((UINTPTR)out_stream, sizeof(COMPLEXD)*nUSC);

    status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, 0x04) & XAXIDMA_IDLE_MASK;
    while(status != XAXIDMA_IDLE_MASK)
    	status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, 0x04) & XAXIDMA_IDLE_MASK;

    status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, 0x34) & XAXIDMA_IDLE_MASK;
    while(status != XAXIDMA_IDLE_MASK)
       	status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, 0x34) & XAXIDMA_IDLE_MASK;

    // End timing
	XTime_GetTime(&t_end);

	// Execution time calculation
	del_t = t_end - t_start;
	exec_time = (float)1.0*del_t/(COUNTS_PER_SECOND/1000000);

	printf("\nExecution time: %f ms\n", exec_time);

//    printf("\nEstimated Results:\n\n");
//    for(int i=0; i<nUSC; i++)
//    	printf("%f + %f i\n", creal(out_stream[i]), cimag(out_stream[i]));

    cleanup_platform();
    return 0;
}
