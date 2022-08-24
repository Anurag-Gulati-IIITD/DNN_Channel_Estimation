#include "least_squares.h"

/*
 * @description: This is the Least Squares Estimator, that takes the received
 * preamble of symbols (as complex numbers) and performs channel estimation
 * by making use of the preamble and the long training symbols.
 *
 * @param: in_stream -> This is the input stream of data that contains 104 symbols
 * 		   in total. The first 52 are the preamble symbols and the next 52
 * 		   are the long training symbols.
 *
 * 		   out_stream -> This is the output data stream that contains the estimated
 * 		   values as per the Least Squares algorithm.
 *
 * @return: None
 *
 */
void LS_estimator(hls::stream<axis_data>&in_stream, hls::stream<axis_data>&out_stream) {

	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=in_stream
	#pragma HLS INTERFACE axis register both port=out_stream

	// preamble and training symbols
	COMPLEXD preamble[nASC], training_sym[nASC];
	// least squares estimated output
	COMPLEXD LS_out[nASC];

	// extracting preamble from input stream
	preamble_in: for(int i=0; i<nASC; i++) {
		axis_data local_input;
		local_input = in_stream.read();
		preamble[i] = local_input.data;
	}
	// extracting training symbols from input stream
	LTS_in: for(int i=0; i<nASC; i++) {
		axis_data local_input;
		local_input = in_stream.read();
		training_sym[i] = local_input.data;
	}

	// performing least squares estimation
	LS_estimation: for(int i=0; i<nASC; i++) {
		#pragma HLS PIPELINE
		LS_out[i] = preamble[i]/training_sym[i];
	}

	// writing LS estimated data to output stream
	out_stream_write: for(int i=0; i<nASC; i++) {
		#pragma HLS PIPELINE
		// local variable to store the symbol
		axis_data local_write;
		local_write.data = LS_out[i];

		// checking for last symbol
		if(i == nASC-1)
			local_write.last = 1;
		else
			local_write.last = 0;

		// writing symbol to stream
		out_stream.write(local_write);
	}

}
