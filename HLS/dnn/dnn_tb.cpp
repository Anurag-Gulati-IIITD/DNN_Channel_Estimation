#include "dnn_tb.h"
#include <math.h>

int main() {

	float nrm = 0;
	float phf = 0;
	float errNorm;

	for(int i=0; i<200; i++) {

		hls::stream<axis_data> LS_stream;
		hls::stream<axis_data> DNN_out;

		COMPLEXD DNNOut[nASC];
		COMPLEXD GoldRef[nASC];

		// generating LS data for i-th realization
		COMPLEXD lsOut[nASC];
		for(int j=0; j<nASC; j++) {
			COMPLEXD z_pre(preamble[i][j]);
			COMPLEXD z_train(train_sym[j]);
			lsOut[j] = z_pre/z_train;
		}

		// writing LS data on input stream of DNN
		for(int j=0; j<nASC; j++) {
			axis_data local_write;
			local_write.data = lsOut[j];
			local_write.last = (j==nASC-1)?1:0;
			LS_stream.write(local_write);
		}

		// running DNN
		#ifdef unoptimized
		DNN_u(LS_stream, DNN_out);
		#endif

		#ifdef pipelined
		DNN_p(LS_stream, DNN_out);
		#endif

		#ifdef unrolled
		DNN_up(LS_stream, DNN_out);
		#endif

		#ifdef wordlength_opt
		DNN_wlo(LS_stream, DNN_out);
		#endif

		#ifdef wordlength_opt__16_6
		DNN_wlo_166(LS_stream, DNN_out);
		#endif

		#ifdef wordlength_opt__21_8
		DNN_wlo_218(LS_stream, DNN_out);
		#endif

		// writing DNN output to i-th realization in DNNOut
		for(int j=0; j<nASC; j++) {
			axis_data local_read = DNN_out.read();
			DNNOut[j] = local_read.data;
			std::cout << DNNOut[j] << ", ";
		} std::cout << std::endl;

		// re-constructing complex numbers in i-th realization of actin
		for(int j=0; j<nASC; j++) {
			COMPLEXD z(actin[i][j]);
			GoldRef[j] = z;
		}

		// comparison of output and ref
		COMPLEXD diff;
		float d;
		for(int j=0; j<nASC; j++) {
			diff = DNNOut[j] - GoldRef[j];
			d = pow(norm(diff), 2);
			nrm += d;
			d = pow(norm(GoldRef[j]), 2);
			phf += d;
		}

	}

	nrm = sqrt(nrm)/200;
	phf = sqrt(phf)/200;
	errNorm = nrm/phf;

	printf("Normalized error: %lf\n", errNorm);

	if(errNorm > 1e-1) {
		printf("FAILED\n");
		return -1;
	}

	printf("SUCCESS\n");

	return 0;
}
