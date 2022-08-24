#include "least_squares.h"
#include <cmath>

const float tolerance = 1e-6;	// comparison tolerance

// benchmarks LS estimation
void leastSquare_bm(const COMPLEXD preamble_bm[nASC], const COMPLEXD trainingsym_bm[nASC], COMPLEXD out_stream_bm[nASC]);

int main() {

	// input and output streams
	hls::stream<axis_data> in_stream, out_stream;
//	COMPLEXD out_stream_bm[nASC];	// benchmark output

	// writing preamble to input stream
	for(int i=0; i<nASC; i++) {
		axis_data local_write;
		local_write.data = PREAMBLE[i];
		local_write.last = i==nASC-1?1:0;
		in_stream.write(local_write);
	}

	// writing training symbols to input stream
	for(int i=0; i<nASC; i++) {
		axis_data local_write;
		local_write.data = TRAINING_SYM[i];
		local_write.last = i==nASC-1?1:0;
		in_stream.write(local_write);
	}

	LS_estimator(in_stream, out_stream);	// estimator function

	// comparing benchmark and estimator outputs
	for(int i=0; i<nASC; i++) {
		axis_data local_read = out_stream.read();
		std::cout << local_read.data << ",";
		COMPLEXD diff = local_read.data - LS_GOLD[i];
		// if comparison exceeds tolerance
	} std::cout << std::endl;

	// match passed
//	std::cout << "PASSED" <<std::endl;
	return 0;
}

//void leastSquare_bm(const COMPLEXD preamble_bm[nASC],const COMPLEXD trainingsym_bm[nASC], COMPLEXD out_stream_bm[nASC]) {
//
//	COMPLEXD in_stream_bm[2*nASC];	// benchmark input stream
//	int k = 0;	// index for input stream
//
//	// writing preamble and training symbols to input stream
//	for(int i=0; i<nASC; i++)
//		in_stream_bm[k++] = preamble_bm[i];
//	for(int i=0; i<nASC; i++)
//		in_stream_bm[k++] = trainingsym_bm[i];
//
//	// LS estimation
//	for(int i=0; i<nASC; i++) {
//		COMPLEXD ls_out = preamble_bm[i]/trainingsym_bm[i];
//		out_stream_bm[i] = ls_out;
//	}
//
//}


