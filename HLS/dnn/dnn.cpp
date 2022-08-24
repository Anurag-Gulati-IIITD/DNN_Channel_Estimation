/*

//////////////////////////////////// FUNCTION DOCUMENTATIONS ////////////////////////////////////

	1. ReLU

		 @description: This function is the Rectified Linear Unit (ReLU).

		 	 :: Defn: ReLU(x) = 0 if x<0; x if x>=0

		 @param: x --> input to ReLU

		 @return: ReLU(x)

	2. separate_complex

		 @description: This function separates the real and imaginary
		 parts of the input complex numbers and returns a vector
		 combing these parts.

		 @param: LS_stream --> The AXI Stream data coming in from the LS estimation block.

		 @return: a vector of the form [re(LS_stream), im(LS_stream)]

	3. normalize

		 @description: This function is to normalize the data coming in from LS estimator
		 after it has been separated into real and imaginary components.

		 @param: - LS_data --> LS data after separation of components.
				 - norm_data --> array that will contain the normalized data.
				 - mean --> means for normalization.
				 - std --> standard deviations for normalization.

		 @return: None.

	4. L2

		 @description: This function is the layer 2 (hidden layer)of the DNN.
		 This layer has 52 nodes and gets the input from layer 1 (input layer), which has 104 nodes.

		 @param: - bias[nASC] --> the neuron bias vector obtained from software traiining of the DNN.
				 - w[nASC*2][nASC] --> the weight matrix which is used to compute the weighted sum of the inputs.
				 - x[nASC*2] --> vector of 104 inputs from the input layer.

		 @return: vector of 52 outputs from L2

	5. L3

		 @description: This function is the layer 3 (output layer) of the DNN.
		 This layer has 104 nodes and gets the input from layer 2 (hidden layer), which has 52 nodes.

  		 @param: - bias[2*nASC] --> the neuron bias vector obtained from software traiining of the DNN.
  		         - w[nASC][2*nASC] --> the weight matrix which is used to compute the weighted sum of the inputs.
   		         - x[nASC] --> vector of 52 inputs from the input layer.

         @return: vector of 104 outputs from L3

    6. denormalize

    	 @description: This function is to de-normalize the data coming in from DNN
         before it is reconstructed into complex numbers.

 	     @param: - DNN_data --> output data from DNN L3
  		         - denorm_data --> array that will contain the de-normalized data.
  		   	  	 - mean_o --> means for de-normalization.
  		   		 - std_o --> standard deviations for de-normalization.

 	 	 @return: None.

 	7. reconstruct_complex

 	 	 @description: This function reconstructs the complex numbers by joining
 	 	 the real and imaginary parts obtained from the DNN.

  		 @param: - y_L3 --> vector of 104 real values where the first 52 represent real parts
  		   	  	   and the remaining 52 represent imaginary parts.
  		   	     - DNN_out --> the AXI Stream to which the coplex numbers are to be written.

		 @return: None.

	8. DNN

		 @description: This is the top function that calls all the required DNN f
		 unctionalities in the correct order.

 	 	 @param: - LS_stream --> input stream from LS estimator
  		         - DNN_out --> output stream from DNN

 	 	 @return: None.

//////////////////////////////////// SOLUTION INDICATORS ////////////////////////////////////

	1. Unoptimized Solution Indicator : _u
	2. Pipelined Solution Indicator : _p
	3. Unrolled & Partitioned Solution Indicator : _up

*/

#include "dnn.h"

#ifdef wordlength_opt
half ReLU(half x) {
	return x < (half)0 ? (half)0 : x;
}
#endif

#ifndef wordlength_opt
float ReLU(float x) {
	return x < 0 ? 0 : x;
}
#endif

/////////////////////////////// UNOPTIMIZED SOLUTION ///////////////////////////////

#ifdef unoptimized

void separate_complex_u(hls::stream<axis_data>&LS_stream, float sep[2*nASC])
{
	// separating input streams into re and im vectors
	separation: for(int i=0; i<nASC; i++) {
		axis_data local_read = LS_stream.read();
		sep[i] = real(local_read.data);
		sep[i+nASC] = imag(local_read.data);
	}

}

void normalize_u(float LS_data[2*nASC], float norm_data[2*nASC], const float mean[2*nASC], const float std[2*nASC])
{
	normalization: for(int i=0; i<2*nASC; i++) {
		norm_data[i] = (LS_data[i] - mean[i])/std[i];
	}
}

void L2_u(const float bias[nASC], const float w[nASC*2][nASC], float x[nASC*2], float y_L2[nASC])
{
	layer_2: for(int i=0; i<nASC; i++) { // for i-th node in L2

		float before_relu = bias[i];	// introducing bias
		weighted_sum_L2: for(int j=0; j<nASC*2; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i]; // adding weighted sum
		}
		y_L2[i] = ReLU(before_relu);	// ReLU

	}
}

void L3_u(const float bias[2*nASC], const float w[nASC][2*nASC], float x[nASC], float y_L3[2*nASC])
{
	layer_3: for(int i=0; i<2*nASC; i++) { // for every node in L3

		float before_relu = bias[i];	// introducing bias
		weighted_sum_L3: for(int j=0; j<nASC; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i];	// adding weighted sum
		}
		y_L3[i] = before_relu;	// ReLU

	}
}

void denormalize_u(float DNN_data[2*nASC], float denorm_data[2*nASC], const float mean_o[2*nASC], const float std_o[2*nASC])
{
	denormalization: for(int i=0; i<2*nASC; i++) {
		denorm_data[i] = DNN_data[i] * std_o[i] + mean_o[i];
	}
}

void reconstruct_complex_u(float y_L3[nASC*2], hls::stream<axis_data>&DNN_out)
{
	reconstruction: for(int i=0; i<nASC; i++) {

		// forming the i-th complex number
		COMPLEXD z(y_L3[i], y_L3[i+nASC]);

		axis_data local_write;// = { z, (i == nASC-1) ? 1 : 0 };
		local_write.data = z;	// writing the complex number to data

		// identifying the last element of the stream
		local_write.last = i == nASC-1 ? 1 : 0;

		// writing the element to output stream
		DNN_out.write(local_write);
	}

}

void DNN_u(hls::stream<axis_data>&LS_stream, hls::stream<axis_data>&DNN_out)
{
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=DNN_out
	#pragma HLS INTERFACE axis register both port=LS_stream

	// LS data after separation
	float LS_data[nASC*2];
	// normalized LS data
	float norm_LS_data[nASC*2];
	// output of L2
	float y_L2[nASC];
	// output of L3
	float y_L3[nASC*2];
	// output of DNN after denormalization
	float denorm_DNN[2*nASC];

	// separating real and imaginary values
	separate_complex_u(LS_stream, LS_data);

	// normalize LS data
	normalize_u(LS_data, norm_LS_data, mean_in, std_in);

	// DNN L2
	L2_u(L1_BIAS, L1_WEIGHTS, norm_LS_data, y_L2);
	// DNN L3
	L3_u(L2_BIAS, L2_WEIGHTS, y_L2, y_L3);

	// de-normalize DNN data
	denormalize_u(y_L3, denorm_DNN, mean_o, std_o);

	// re-constructing complex values
	reconstruct_complex_u(denorm_DNN, DNN_out);

}

#endif

/////////////////////////////// PIPELINED SOLUTION ///////////////////////////////

#ifdef pipelined

void separate_complex_p(hls::stream<axis_data>&LS_stream, float sep[2*nASC]) {

	// separating input streams into re and im vectors
	separation: for(int i=0; i<nASC; i++) {
		#pragma HLS PIPELINE
		axis_data local_read = LS_stream.read();
		sep[i] = real(local_read.data);
		sep[i+nASC] = imag(local_read.data);
	}

}

void normalize_p(float LS_data[2*nASC], float norm_data[2*nASC], const float mean[2*nASC], const float std[2*nASC]) {
	normalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		norm_data[i] = (LS_data[i] - mean[i])/std[i];
	}
}

void L2_p(const float bias[nASC], const float w[nASC*2][nASC], float x[nASC*2], float y_L2[nASC]) {

	layer_2: for(int i=0; i<nASC; i++) { // for i-th node in L2

		float before_relu = bias[i];	// introducing bias
		weighted_sum_L2: for(int j=0; j<nASC*2; j++) {	// for j-th row in matrix w
			#pragma HLS PIPELINE
			before_relu += x[j]*w[j][i]; // adding weighted sum
		}
		y_L2[i] = ReLU(before_relu);	// ReLU

	}

}

void L3_p(const float bias[2*nASC], const float w[nASC][2*nASC], float x[nASC], float y_L3[2*nASC]) {

	layer_3: for(int i=0; i<2*nASC; i++) { // for every node in L3

		float before_relu = bias[i];	// introducing bias
		weighted_sum_L3: for(int j=0; j<nASC; j++) {	// for j-th row in matrix w
			#pragma HLS PIPELINE
			before_relu += x[j]*w[j][i];	// adding weighted sum
		}
		y_L3[i] = before_relu;	// ReLU

	}

}

void denormalize_p(float DNN_data[2*nASC], float denorm_data[2*nASC], const float mean_o[2*nASC], const float std_o[2*nASC]) {
	denormalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		denorm_data[i] = DNN_data[i] * std_o[i] + mean_o[i];
	}
}

void reconstruct_complex_p(float y_L3[nASC*2], hls::stream<axis_data>&DNN_out) {

	reconstruction: for(int i=0; i<nASC; i++) {

		#pragma HLS PIPELINE

		// forming the i-th complex number
		COMPLEXD z(y_L3[i], y_L3[i+nASC]);

		axis_data local_write;
		local_write.data = z;	// writing the complex number to data

		// identifying the last element of the stream
		local_write.last = i == nASC-1 ? 1 : 0;

		// writing the element to output stream
		DNN_out.write(local_write);
	}

}

void DNN_p(hls::stream<axis_data>&LS_stream, hls::stream<axis_data>&DNN_out) {

	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=DNN_out
	#pragma HLS INTERFACE axis register both port=LS_stream

	// LS data after separation
	float LS_data[nASC*2];
	// normalized LS data
	float norm_LS_data[nASC*2];
	// output of L2
	float y_L2[nASC];
	// output of L3
	float y_L3[nASC*2];
	// output of DNN after denormalization
	float denorm_DNN[2*nASC];

	// separating real and imaginary values
	separate_complex_p(LS_stream, LS_data);

	// normalize LS data
	normalize_p(LS_data, norm_LS_data, mean_in, std_in);

	// DNN L2
	L2_p(L1_BIAS, L1_WEIGHTS, norm_LS_data, y_L2);
	// DNN L3
	L3_p(L2_BIAS, L2_WEIGHTS, y_L2, y_L3);

	// de-normalize DNN data
	denormalize_p(y_L3, denorm_DNN, mean_o, std_o);

	// re-constructing complex values
	reconstruct_complex_p(denorm_DNN, DNN_out);

}

#endif

/////////////////////////////// UNROLLED SOLUTION ///////////////////////////////

#ifdef unrolled

void separate_complex_up(hls::stream<axis_data>&LS_stream, float sep[2*nASC]) {

	// separating input streams into re and im vectors
	separation: for(int i=0; i<nASC; i++) {
		#pragma HLS PIPELINE
		axis_data local_read = LS_stream.read();
		sep[i] = real(local_read.data);
		sep[i+nASC] = imag(local_read.data);
	}

}

void normalize_up(float LS_data[2*nASC], float norm_data[2*nASC], const float mean[2*nASC], const float std[2*nASC]) {
	normalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		norm_data[i] = (LS_data[i] - mean[i])/std[i];
	}
}

void L2_up(const float bias[nASC], const float w[nASC*2][nASC], float x[nASC*2], float y_L2[nASC]) {

	layer_2: for(int i=0; i<nASC; i++) { // for i-th node in L2

		#pragma HLS PIPELINE II=5

		float before_relu = bias[i];	// introducing bias
		weighted_sum_L2: for(int j=0; j<nASC*2; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i]; // adding weighted sum
		}
		y_L2[i] = ReLU(before_relu);	// ReLU

	}

}

void L3_up(const float bias[2*nASC], const float w[nASC][2*nASC], float x[nASC], float y_L3[2*nASC]) {

	layer_3: for(int i=0; i<2*nASC; i++) { // for every node in L3

		#pragma HLS PIPELINE II=5

		float before_relu = bias[i];	// introducing bias
		weighted_sum_L3: for(int j=0; j<nASC; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i];	// adding weighted sum
		}
		y_L3[i] = before_relu;	// ReLU

	}

}

void denormalize_up(float DNN_data[2*nASC], float denorm_data[2*nASC], const float mean_o[2*nASC], const float std_o[2*nASC]) {
	denormalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		denorm_data[i] = DNN_data[i] * std_o[i] + mean_o[i];
	}
}

void reconstruct_complex_up(float y_L3[nASC*2], hls::stream<axis_data>&DNN_out) {

	reconstruction: for(int i=0; i<nASC; i++) {

		#pragma HLS PIPELINE

		// forming the i-th complex number
		COMPLEXD z(y_L3[i], y_L3[i+nASC]);

		axis_data local_write;
		local_write.data = z;	// writing the complex number to data

		// identifying the last element of the stream
		local_write.last = i == nASC-1 ? 1 : 0;

		// writing the element to output stream
		DNN_out.write(local_write);
	}

}

void DNN_up(hls::stream<axis_data>&LS_stream, hls::stream<axis_data>&DNN_out) {

	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=DNN_out
	#pragma HLS INTERFACE axis register both port=LS_stream

	#pragma HLS ARRAY_PARTITION variable=L1_WEIGHTS complete dim=1
	#pragma HLS ARRAY_PARTITION variable=L2_WEIGHTS complete dim=1

	// LS data after separation
	float LS_data[nASC*2];
	// normalized LS data
	float norm_LS_data[nASC*2];
	#pragma HLS ARRAY_PARTITION variable=norm_LS_data block factor=52
	// output of L2
	float y_L2[nASC];
	#pragma HLS ARRAY_PARTITION variable=y_L2 block factor=26
	// output of L3
	float y_L3[nASC*2];
	// output of DNN after denormalization
	float denorm_DNN[2*nASC];

	// separating real and imaginary values
	separate_complex_up(LS_stream, LS_data);

	// normalize LS data
	normalize_up(LS_data, norm_LS_data, mean_in, std_in);

	// DNN L2
	L2_up(L1_BIAS, L1_WEIGHTS, norm_LS_data, y_L2);
	// DNN L3
	L3_up(L2_BIAS, L2_WEIGHTS, y_L2, y_L3);

	// de-normalize DNN data
	denormalize_up(y_L3, denorm_DNN, mean_o, std_o);

	// re-constructing complex values
	reconstruct_complex_up(denorm_DNN, DNN_out);

}

#endif

/////////////////////////////// WORD LENGTH OPTIMIZED SOLUTION (HALF PRECISION) ///////////////////////////////

#ifdef wordlength_opt

void separate_complex_wlo(hls::stream<axis_data>&LS_stream, half sep[2*nASC]) {

	// separating input streams into re and im vectors
	separation: for(int i=0; i<nASC; i++) {
		#pragma HLS PIPELINE
		axis_data local_read = LS_stream.read();
		sep[i] = real((std::complex<half>)local_read.data);
		sep[i+nASC] = imag((std::complex<half>)local_read.data);
	}

}

void normalize_wlo(half LS_data[2*nASC], half norm_data[2*nASC], const half mean[2*nASC], const half std[2*nASC]) {
	normalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		norm_data[i] = (LS_data[i] - mean[i])/std[i];
	}
}

void L2_wlo(const half bias[nASC], const half w[nASC*2][nASC], half x[nASC*2], half y_L2[nASC]) {

	layer_2: for(int i=0; i<nASC; i++) { // for i-th node in L2

		#pragma HLS PIPELINE II=4

		half before_relu = bias[i];	// introducing bias
		weighted_sum_L2: for(int j=0; j<nASC*2; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i]; // adding weighted sum
		}
		y_L2[i] = ReLU(before_relu);	// ReLU

	}

}

void L3_wlo(const half bias[2*nASC], const half w[nASC][2*nASC], half x[nASC], half y_L3[2*nASC]) {

	layer_3: for(int i=0; i<2*nASC; i++) { // for every node in L3

		#pragma HLS PIPELINE II=4

		half before_relu = bias[i];	// introducing bias
		weighted_sum_L3: for(int j=0; j<nASC; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i];	// adding weighted sum
		}
		y_L3[i] = before_relu;	// ReLU

	}

}

void denormalize_wlo(half DNN_data[2*nASC], half denorm_data[2*nASC], const half mean_o[2*nASC], const half std_o[2*nASC]) {
	denormalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		denorm_data[i] = DNN_data[i] * std_o[i] + mean_o[i];
	}
}

void reconstruct_complex_wlo(half y_L3[nASC*2], hls::stream<axis_data>&DNN_out) {

	reconstruction: for(int i=0; i<nASC; i++) {

		#pragma HLS PIPELINE

		// forming the i-th complex number
		COMPLEXD z((float)y_L3[i], (float)y_L3[i+nASC]);

		axis_data local_write;
		local_write.data = z;	// writing the complex number to data

		// identifying the last element of the stream
		local_write.last = i == nASC-1 ? 1 : 0;

		// writing the element to output stream
		DNN_out.write(local_write);
	}

}

void DNN_wlo(hls::stream<axis_data>&LS_stream, hls::stream<axis_data>&DNN_out) {

	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=DNN_out
	#pragma HLS INTERFACE axis register both port=LS_stream

	#pragma HLS ARRAY_PARTITION variable=L1_WEIGHTS complete dim=1
	#pragma HLS ARRAY_PARTITION variable=L2_WEIGHTS complete dim=1

	// LS data after separation
	half LS_data[nASC*2];
	// normalized LS data
	half norm_LS_data[nASC*2];
	#pragma HLS ARRAY_PARTITION variable=norm_LS_data block factor=52
	// output of L2
	half y_L2[nASC];
	#pragma HLS ARRAY_PARTITION variable=y_L2 block factor=26
	// output of L3
	half y_L3[nASC*2];
	// output of DNN after denormalization
	half denorm_DNN[2*nASC];

	// separating real and imaginary values
	separate_complex_wlo(LS_stream, LS_data);

	// normalize LS data
	normalize_wlo(LS_data, norm_LS_data, mean_in, std_in);

	// DNN L2
	L2_wlo(L1_BIAS, L1_WEIGHTS, norm_LS_data, y_L2);
	// DNN L3
	L3_wlo(L2_BIAS, L2_WEIGHTS, y_L2, y_L3);

	// de-normalize DNN data
	denormalize_wlo(y_L3, denorm_DNN, mean_o, std_o);

	// re-constructing complex values
	reconstruct_complex_wlo(denorm_DNN, DNN_out);

}

#endif

/////////////////////////////// WORD LENGTH OPTIMIZED SOLUTION (16, 6) ///////////////////////////////

#ifdef wordlength_opt__16_6

void separate_complex_wlo_166(hls::stream<axis_data>&LS_stream, fixed sep[2*nASC]) {

	// separating input streams into re and im vectors
	separation: for(int i=0; i<nASC; i++) {
		#pragma HLS PIPELINE
		axis_data local_read = LS_stream.read();
		sep[i] = real((std::complex<fixed>)local_read.data);
		sep[i+nASC] = imag((std::complex<fixed>)local_read.data);
	}

}

void normalize_wlo_166(fixed LS_data[2*nASC], fixed norm_data[2*nASC], const fixed mean[2*nASC], const fixed std[2*nASC]) {
	normalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		norm_data[i] = (LS_data[i] - mean[i])/std[i];
	}
}

void L2_wlo_166(const fixed bias[nASC], const fixed w[nASC*2][nASC], fixed x[nASC*2], fixed y_L2[nASC]) {

	layer_2: for(int i=0; i<nASC; i++) { // for i-th node in L2

		#pragma HLS PIPELINE II=4

		fixed before_relu = bias[i];	// introducing bias
		weighted_sum_L2: for(int j=0; j<nASC*2; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i]; // adding weighted sum
		}
		y_L2[i] = ReLU(before_relu);	// ReLU

	}

}

void L3_wlo_166(const fixed bias[2*nASC], const fixed w[nASC][2*nASC], fixed x[nASC], fixed y_L3[2*nASC]) {

	layer_3: for(int i=0; i<2*nASC; i++) { // for every node in L3

		#pragma HLS PIPELINE II=4

		fixed before_relu = bias[i];	// introducing bias
		weighted_sum_L3: for(int j=0; j<nASC; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i];	// adding weighted sum
		}
		y_L3[i] = before_relu;	// ReLU

	}

}

void denormalize_wlo_166(fixed DNN_data[2*nASC], fixed denorm_data[2*nASC], const fixed mean_o[2*nASC], const fixed std_o[2*nASC]) {
	denormalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		denorm_data[i] = DNN_data[i] * std_o[i] + mean_o[i];
	}
}

void reconstruct_complex_wlo_166(fixed y_L3[nASC*2], hls::stream<axis_data>&DNN_out) {

	reconstruction: for(int i=0; i<nASC; i++) {

		#pragma HLS PIPELINE

		// forming the i-th complex number
		COMPLEXD z((float)y_L3[i], (float)y_L3[i+nASC]);

		axis_data local_write;
		local_write.data = z;	// writing the complex number to data

		// identifying the last element of the stream
		local_write.last = i == nASC-1 ? 1 : 0;

		// writing the element to output stream
		DNN_out.write(local_write);
	}

}

void DNN_wlo_166(hls::stream<axis_data>&LS_stream, hls::stream<axis_data>&DNN_out) {

	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=DNN_out
	#pragma HLS INTERFACE axis register both port=LS_stream

	#pragma HLS ARRAY_PARTITION variable=L1_WEIGHTS complete dim=1
	#pragma HLS ARRAY_PARTITION variable=L2_WEIGHTS complete dim=1

	// LS data after separation
	fixed LS_data[nASC*2];
	// normalized LS data
	fixed norm_LS_data[nASC*2];
	#pragma HLS ARRAY_PARTITION variable=norm_LS_data block factor=52
	// output of L2
	fixed y_L2[nASC];
	#pragma HLS ARRAY_PARTITION variable=y_L2 block factor=26
	// output of L3
	fixed y_L3[nASC*2];
	// output of DNN after denormalization
	fixed denorm_DNN[2*nASC];

	// separating real and imaginary values
	separate_complex_wlo_166(LS_stream, LS_data);

	// normalize LS data
	normalize_wlo_166(LS_data, norm_LS_data, mean_in, std_in);

	// DNN L2
	L2_wlo_166(L1_BIAS, L1_WEIGHTS, norm_LS_data, y_L2);
	// DNN L3
	L3_wlo_166(L2_BIAS, L2_WEIGHTS, y_L2, y_L3);

	// de-normalize DNN data
	denormalize_wlo_166(y_L3, denorm_DNN, mean_o, std_o);

	// re-constructing complex values
	reconstruct_complex_wlo_166(denorm_DNN, DNN_out);

}

#endif

/////////////////////////////// WORD LENGTH OPTIMIZED SOLUTION (21, 8) ///////////////////////////////

#ifdef wordlength_opt__21_8

void separate_complex_wlo_218(hls::stream<axis_data>&LS_stream, fixed sep[2*nASC]) {

	// separating input streams into re and im vectors
	separation: for(int i=0; i<nASC; i++) {
		#pragma HLS PIPELINE
		axis_data local_read = LS_stream.read();
		sep[i] = real((std::complex<fixed>)local_read.data);
		sep[i+nASC] = imag((std::complex<fixed>)local_read.data);
	}

}

void normalize_wlo_218(fixed LS_data[2*nASC], fixed norm_data[2*nASC], const fixed mean[2*nASC], const fixed std[2*nASC]) {
	normalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		norm_data[i] = (LS_data[i] - mean[i])/std[i];
	}
}

void L2_wlo_218(const fixed bias[nASC], const fixed w[nASC*2][nASC], fixed x[nASC*2], fixed y_L2[nASC]) {

	layer_2: for(int i=0; i<nASC; i++) { // for i-th node in L2

		#pragma HLS PIPELINE II=4

		fixed before_relu = bias[i];	// introducing bias
		weighted_sum_L2: for(int j=0; j<nASC*2; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i]; // adding weighted sum
		}
		y_L2[i] = ReLU(before_relu);	// ReLU

	}

}

void L3_wlo_218(const fixed bias[2*nASC], const fixed w[nASC][2*nASC], fixed x[nASC], fixed y_L3[2*nASC]) {

	layer_3: for(int i=0; i<2*nASC; i++) { // for every node in L3

		#pragma HLS PIPELINE II=4

		fixed before_relu = bias[i];	// introducing bias
		weighted_sum_L3: for(int j=0; j<nASC; j++) {	// for j-th row in matrix w
			before_relu += x[j]*w[j][i];	// adding weighted sum
		}
		y_L3[i] = before_relu;	// ReLU

	}

}

void denormalize_wlo_218(fixed DNN_data[2*nASC], fixed denorm_data[2*nASC], const fixed mean_o[2*nASC], const fixed std_o[2*nASC]) {
	denormalization: for(int i=0; i<2*nASC; i++) {
		#pragma HLS PIPELINE
		denorm_data[i] = DNN_data[i] * std_o[i] + mean_o[i];
	}
}

void reconstruct_complex_wlo_218(fixed y_L3[nASC*2], hls::stream<axis_data>&DNN_out) {

	reconstruction: for(int i=0; i<nASC; i++) {

		#pragma HLS PIPELINE

		// forming the i-th complex number
		COMPLEXD z((float)y_L3[i], (float)y_L3[i+nASC]);

		axis_data local_write;
		local_write.data = z;	// writing the complex number to data

		// identifying the last element of the stream
		local_write.last = i == nASC-1 ? 1 : 0;

		// writing the element to output stream
		DNN_out.write(local_write);
	}

}

void DNN_wlo_218(hls::stream<axis_data>&LS_stream, hls::stream<axis_data>&DNN_out) {

	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis register both port=DNN_out
	#pragma HLS INTERFACE axis register both port=LS_stream

	#pragma HLS ARRAY_PARTITION variable=L1_WEIGHTS complete dim=1
	#pragma HLS ARRAY_PARTITION variable=L2_WEIGHTS complete dim=1

	// LS data after separation
	fixed LS_data[nASC*2];
	// normalized LS data
	fixed norm_LS_data[nASC*2];
	#pragma HLS ARRAY_PARTITION variable=norm_LS_data block factor=52
	// output of L2
	fixed y_L2[nASC];
	#pragma HLS ARRAY_PARTITION variable=y_L2 block factor=26
	// output of L3
	fixed y_L3[nASC*2];
	// output of DNN after denormalization
	fixed denorm_DNN[2*nASC];

	// separating real and imaginary values
	separate_complex_wlo_218(LS_stream, LS_data);

	// normalize LS data
	normalize_wlo_218(LS_data, norm_LS_data, mean_in, std_in);

	// DNN L2
	L2_wlo_218(L1_BIAS, L1_WEIGHTS, norm_LS_data, y_L2);
	// DNN L3
	L3_wlo_218(L2_BIAS, L2_WEIGHTS, y_L2, y_L3);

	// de-normalize DNN data
	denormalize_wlo_218(y_L3, denorm_DNN, mean_o, std_o);

	// re-constructing complex values
	reconstruct_complex_wlo_218(denorm_DNN, DNN_out);

}

#endif
