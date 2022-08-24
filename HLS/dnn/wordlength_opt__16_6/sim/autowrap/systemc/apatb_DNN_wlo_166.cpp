// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct axis_data {
        std::complex<float > data;
        ap_uint<1> last;
       } axis_data;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "LS_stream_V_data"
#define AUTOTB_TVIN_LS_stream_V_data  "../tv/cdatafile/c.DNN_wlo_166.autotvin_LS_stream_V_data.dat"
#define WRAPC_STREAM_SIZE_IN_LS_stream_V_data  "../tv/stream_size/stream_size_in_LS_stream_V_data.dat"
#define WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data  "../tv/stream_size/stream_ingress_status_LS_stream_V_data.dat"
// wrapc file define: "LS_stream_V_last_V"
#define AUTOTB_TVIN_LS_stream_V_last_V  "../tv/cdatafile/c.DNN_wlo_166.autotvin_LS_stream_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_LS_stream_V_last_V  "../tv/stream_size/stream_size_in_LS_stream_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V  "../tv/stream_size/stream_ingress_status_LS_stream_V_last_V.dat"
// wrapc file define: "DNN_out_V_data"
#define AUTOTB_TVOUT_DNN_out_V_data  "../tv/cdatafile/c.DNN_wlo_166.autotvout_DNN_out_V_data.dat"
#define AUTOTB_TVIN_DNN_out_V_data  "../tv/cdatafile/c.DNN_wlo_166.autotvin_DNN_out_V_data.dat"
#define WRAPC_STREAM_SIZE_OUT_DNN_out_V_data  "../tv/stream_size/stream_size_out_DNN_out_V_data.dat"
#define WRAPC_STREAM_EGRESS_STATUS_DNN_out_V_data  "../tv/stream_size/stream_egress_status_DNN_out_V_data.dat"
// wrapc file define: "DNN_out_V_last_V"
#define AUTOTB_TVOUT_DNN_out_V_last_V  "../tv/cdatafile/c.DNN_wlo_166.autotvout_DNN_out_V_last_V.dat"
#define AUTOTB_TVIN_DNN_out_V_last_V  "../tv/cdatafile/c.DNN_wlo_166.autotvin_DNN_out_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_DNN_out_V_last_V  "../tv/stream_size/stream_size_out_DNN_out_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_DNN_out_V_last_V  "../tv/stream_size/stream_egress_status_DNN_out_V_last_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "DNN_out_V_data"
#define AUTOTB_TVOUT_PC_DNN_out_V_data  "../tv/rtldatafile/rtl.DNN_wlo_166.autotvout_DNN_out_V_data.dat"
// tvout file define: "DNN_out_V_last_V"
#define AUTOTB_TVOUT_PC_DNN_out_V_last_V  "../tv/rtldatafile/rtl.DNN_wlo_166.autotvout_DNN_out_V_last_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			LS_stream_V_data_depth = 0;
			LS_stream_V_last_V_depth = 0;
			DNN_out_V_data_depth = 0;
			DNN_out_V_last_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{LS_stream_V_data " << LS_stream_V_data_depth << "}\n";
			total_list << "{LS_stream_V_last_V " << LS_stream_V_last_V_depth << "}\n";
			total_list << "{DNN_out_V_data " << DNN_out_V_data_depth << "}\n";
			total_list << "{DNN_out_V_last_V " << DNN_out_V_last_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int LS_stream_V_data_depth;
		int LS_stream_V_last_V_depth;
		int DNN_out_V_data_depth;
		int DNN_out_V_last_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void DNN_wlo_166 (
hls::stream<axis_data > (&LS_stream),
hls::stream<axis_data > (&DNN_out));

void AESL_WRAP_DNN_wlo_166 (
hls::stream<axis_data > (&LS_stream),
hls::stream<axis_data > (&DNN_out))
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// pop stream input: "LS_stream"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_LS_stream_V_data, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_LS_stream_V_data, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_LS_stream_V_data, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				LS_stream.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_LS_stream_V_data, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "DNN_out"
		std::vector<axis_data > aesl_tmp_3;
		int aesl_tmp_4;
		int aesl_tmp_5 = 0;

		// read output stream size: "DNN_out"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_DNN_out_V_data, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_DNN_out_V_data, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_DNN_out_V_data, AESL_token); // pop_size
			aesl_tmp_4 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_DNN_out_V_data, AESL_token); // [[/transaction]]
		}

		// output port post check: "DNN_out_V_data"
		aesl_fh.read(AUTOTB_TVOUT_PC_DNN_out_V_data, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_DNN_out_V_data, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_DNN_out_V_data, AESL_token); // data

			std::vector<sc_bv<64> > DNN_out_V_data_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DNN_out_V_data', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DNN_out_V_data', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					DNN_out_V_data_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_DNN_out_V_data, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_DNN_out_V_data))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					axis_data tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: DNN_out_V_data
				{
					// bitslice(31, 0)
					// {
						// celement: DNN_out.V.data._M_real(31, 0)
						// {
							sc_lv<32>* DNN_out_V_data__M_real_lv0_0_0_1_lv1_0_0_1 = new sc_lv<32>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }
					// bitslice(63, 32)
					// {
						// celement: DNN_out.V.data._M_imag(31, 0)
						// {
							sc_lv<32>* DNN_out_V_data__M_imag_lv0_0_0_1_lv1_0_0_1 = new sc_lv<32>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: DNN_out.V.data._M_real(31, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										DNN_out_V_data__M_real_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(DNN_out_V_data_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}
					// bitslice(63, 32)
					{
						int hls_map_index = 0;
						// celement: DNN_out.V.data._M_imag(31, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										DNN_out_V_data__M_imag_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(DNN_out_V_data_pc_buffer[hls_map_index].range(63, 32));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
    float wrap_real_DNN_out_V_data__M_real;
						// celement: DNN_out.V.data._M_real(31, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].data.real()
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].data
									// output_left_conversion : *(int*)&wrap_real_DNN_out_V_data__M_real
									// output_type_conversion : (DNN_out_V_data__M_real_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_uint64()
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										wrap_real_DNN_out_V_data__M_real = aesl_tmp_3[i_0].data.real();
										*(int*)&wrap_real_DNN_out_V_data__M_real = (DNN_out_V_data__M_real_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_uint64();
										aesl_tmp_3[i_0].data.real(wrap_real_DNN_out_V_data__M_real);
										hls_map_index++;
									}
								}
							}
						}
					}
					// bitslice(63, 32)
					{
						int hls_map_index = 0;
    float wrap_imag_DNN_out_V_data__M_imag;
						// celement: DNN_out.V.data._M_imag(31, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].data.imag()
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].data
									// output_left_conversion : *(int*)&wrap_imag_DNN_out_V_data__M_imag
									// output_type_conversion : (DNN_out_V_data__M_imag_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_uint64()
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										wrap_imag_DNN_out_V_data__M_imag = aesl_tmp_3[i_0].data.imag();
										*(int*)&wrap_imag_DNN_out_V_data__M_imag = (DNN_out_V_data__M_imag_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_uint64();
										aesl_tmp_3[i_0].data.imag(wrap_imag_DNN_out_V_data__M_imag);
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "DNN_out_V_last_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_DNN_out_V_last_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_DNN_out_V_last_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_DNN_out_V_last_V, AESL_token); // data

			std::vector<sc_bv<1> > DNN_out_V_last_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DNN_out_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DNN_out_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					DNN_out_V_last_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_DNN_out_V_last_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_DNN_out_V_last_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					axis_data tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: DNN_out_V_last_V
				{
					// bitslice(0, 0)
					// {
						// celement: DNN_out.V.last.V(0, 0)
						// {
							sc_lv<1>* DNN_out_V_last_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: DNN_out.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										DNN_out_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(DNN_out_V_last_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: DNN_out.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].last
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].last
									// output_left_conversion : aesl_tmp_3[i_0].last
									// output_type_conversion : (DNN_out_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].last = (DNN_out_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "DNN_out"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			DNN_out.write(aesl_tmp_3[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "LS_stream_V_data"
		char* tvin_LS_stream_V_data = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_LS_stream_V_data);
		char* wrapc_stream_size_in_LS_stream_V_data = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_LS_stream_V_data);
		char* wrapc_stream_ingress_status_LS_stream_V_data = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data);

		// "LS_stream_V_last_V"
		char* tvin_LS_stream_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_LS_stream_V_last_V);
		char* wrapc_stream_size_in_LS_stream_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_LS_stream_V_last_V);
		char* wrapc_stream_ingress_status_LS_stream_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V);

		// "DNN_out_V_data"
		char* tvin_DNN_out_V_data = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_DNN_out_V_data);
		char* tvout_DNN_out_V_data = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_DNN_out_V_data);
		char* wrapc_stream_size_out_DNN_out_V_data = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_DNN_out_V_data);
		char* wrapc_stream_egress_status_DNN_out_V_data = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_DNN_out_V_data);

		// "DNN_out_V_last_V"
		char* tvin_DNN_out_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_DNN_out_V_last_V);
		char* tvout_DNN_out_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_DNN_out_V_last_V);
		char* wrapc_stream_size_out_DNN_out_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_DNN_out_V_last_V);
		char* wrapc_stream_egress_status_DNN_out_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_DNN_out_V_last_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "LS_stream"
		std::vector<axis_data > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!LS_stream.empty())
		{
			aesl_tmp_0.push_back(LS_stream.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "DNN_out"
		std::vector<axis_data > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!DNN_out.empty())
		{
			aesl_tmp_3.push_back(DNN_out.read());
			aesl_tmp_4++;
		}

		// push back input stream: "LS_stream"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			LS_stream.write(aesl_tmp_0[i]);
		}

		// push back input stream: "DNN_out"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			DNN_out.write(aesl_tmp_3[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		DNN_wlo_166(LS_stream, DNN_out);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "LS_stream"
		int aesl_tmp_2 = LS_stream.size();

		// pop output stream: "DNN_out"
		int aesl_tmp_5 = aesl_tmp_4;
		aesl_tmp_4 = 0;
     aesl_tmp_3.clear();
		while (!DNN_out.empty())
		{
			aesl_tmp_3.push_back(DNN_out.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_LS_stream_V_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_LS_stream_V_data, tvin_LS_stream_V_data);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data, tvin_LS_stream_V_data);

		sc_bv<64>* LS_stream_V_data_tvin_wrapc_buffer = new sc_bv<64>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: LS_stream_V_data
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_LS_stream_V_data__M_real;
				// celement: LS_stream.V.data._M_real(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].data.real()
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].data
							// regulate_c_name       : LS_stream_V_data__M_real
							// input_type_conversion : *(int*)&wrap_real_LS_stream_V_data__M_real
							if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> LS_stream_V_data__M_real_tmp_mem;
                                 		       wrap_real_LS_stream_V_data__M_real = aesl_tmp_0[i_0].data.real();
								LS_stream_V_data__M_real_tmp_mem = *(int*)&wrap_real_LS_stream_V_data__M_real;
								LS_stream_V_data_tvin_wrapc_buffer[hls_map_index].range(31, 0) = LS_stream_V_data__M_real_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
			// bitslice(63, 32)
			{
				int hls_map_index = 0;
    float wrap_imag_LS_stream_V_data__M_imag;
				// celement: LS_stream.V.data._M_imag(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].data.imag()
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].data
							// regulate_c_name       : LS_stream_V_data__M_imag
							// input_type_conversion : *(int*)&wrap_imag_LS_stream_V_data__M_imag
							if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> LS_stream_V_data__M_imag_tmp_mem;
                                 		       wrap_imag_LS_stream_V_data__M_imag = aesl_tmp_0[i_0].data.imag();
								LS_stream_V_data__M_imag_tmp_mem = *(int*)&wrap_imag_LS_stream_V_data__M_imag;
								LS_stream_V_data_tvin_wrapc_buffer[hls_map_index].range(63, 32) = LS_stream_V_data__M_imag_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_LS_stream_V_data, "%s\n", (LS_stream_V_data_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_LS_stream_V_data, tvin_LS_stream_V_data);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_LS_stream_V_data = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data, stream_ingress_size_LS_stream_V_data.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_LS_stream_V_data--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data, stream_ingress_size_LS_stream_V_data.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_LS_stream_V_data = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data, stream_ingress_size_LS_stream_V_data.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.LS_stream_V_data_depth);
		sprintf(tvin_LS_stream_V_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_LS_stream_V_data, tvin_LS_stream_V_data);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_data, tvin_LS_stream_V_data);

		// release memory allocation
		delete [] LS_stream_V_data_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_LS_stream_V_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_LS_stream_V_data, wrapc_stream_size_in_LS_stream_V_data);
		sprintf(wrapc_stream_size_in_LS_stream_V_data, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_LS_stream_V_data, wrapc_stream_size_in_LS_stream_V_data);
		sprintf(wrapc_stream_size_in_LS_stream_V_data, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_LS_stream_V_data, wrapc_stream_size_in_LS_stream_V_data);

		// [[transaction]]
		sprintf(tvin_LS_stream_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_LS_stream_V_last_V, tvin_LS_stream_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V, tvin_LS_stream_V_last_V);

		sc_bv<1>* LS_stream_V_last_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: LS_stream_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: LS_stream.V.last.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].last
							// regulate_c_name       : LS_stream_V_last_V
							// input_type_conversion : (aesl_tmp_0[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> LS_stream_V_last_V_tmp_mem;
								LS_stream_V_last_V_tmp_mem = (aesl_tmp_0[i_0].last).to_string(2).c_str();
								LS_stream_V_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = LS_stream_V_last_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_LS_stream_V_last_V, "%s\n", (LS_stream_V_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_LS_stream_V_last_V, tvin_LS_stream_V_last_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_LS_stream_V_last_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V, stream_ingress_size_LS_stream_V_last_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_LS_stream_V_last_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V, stream_ingress_size_LS_stream_V_last_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_LS_stream_V_last_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V, stream_ingress_size_LS_stream_V_last_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.LS_stream_V_last_V_depth);
		sprintf(tvin_LS_stream_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_LS_stream_V_last_V, tvin_LS_stream_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_LS_stream_V_last_V, tvin_LS_stream_V_last_V);

		// release memory allocation
		delete [] LS_stream_V_last_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_LS_stream_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_LS_stream_V_last_V, wrapc_stream_size_in_LS_stream_V_last_V);
		sprintf(wrapc_stream_size_in_LS_stream_V_last_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_LS_stream_V_last_V, wrapc_stream_size_in_LS_stream_V_last_V);
		sprintf(wrapc_stream_size_in_LS_stream_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_LS_stream_V_last_V, wrapc_stream_size_in_LS_stream_V_last_V);

		// [[transaction]]
		sprintf(tvout_DNN_out_V_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_DNN_out_V_data, tvout_DNN_out_V_data);

		sc_bv<64>* DNN_out_V_data_tvout_wrapc_buffer = new sc_bv<64>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: DNN_out_V_data
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_DNN_out_V_data__M_real;
				// celement: DNN_out.V.data._M_real(31, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].data.real()
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].data
							// regulate_c_name       : DNN_out_V_data__M_real
							// input_type_conversion : *(int*)&wrap_real_DNN_out_V_data__M_real
							if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> DNN_out_V_data__M_real_tmp_mem;
                                 		       wrap_real_DNN_out_V_data__M_real = aesl_tmp_3[i_0].data.real();
								DNN_out_V_data__M_real_tmp_mem = *(int*)&wrap_real_DNN_out_V_data__M_real;
								DNN_out_V_data_tvout_wrapc_buffer[hls_map_index].range(31, 0) = DNN_out_V_data__M_real_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
			// bitslice(63, 32)
			{
				int hls_map_index = 0;
    float wrap_imag_DNN_out_V_data__M_imag;
				// celement: DNN_out.V.data._M_imag(31, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].data.imag()
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].data
							// regulate_c_name       : DNN_out_V_data__M_imag
							// input_type_conversion : *(int*)&wrap_imag_DNN_out_V_data__M_imag
							if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> DNN_out_V_data__M_imag_tmp_mem;
                                 		       wrap_imag_DNN_out_V_data__M_imag = aesl_tmp_3[i_0].data.imag();
								DNN_out_V_data__M_imag_tmp_mem = *(int*)&wrap_imag_DNN_out_V_data__M_imag;
								DNN_out_V_data_tvout_wrapc_buffer[hls_map_index].range(63, 32) = DNN_out_V_data__M_imag_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_DNN_out_V_data, "%s\n", (DNN_out_V_data_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_DNN_out_V_data, tvout_DNN_out_V_data);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.DNN_out_V_data_depth);
		sprintf(tvout_DNN_out_V_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_DNN_out_V_data, tvout_DNN_out_V_data);

		// release memory allocation
		delete [] DNN_out_V_data_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_DNN_out_V_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_DNN_out_V_data, wrapc_stream_size_out_DNN_out_V_data);
		sprintf(wrapc_stream_size_out_DNN_out_V_data, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_DNN_out_V_data, wrapc_stream_size_out_DNN_out_V_data);
		sprintf(wrapc_stream_size_out_DNN_out_V_data, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_DNN_out_V_data, wrapc_stream_size_out_DNN_out_V_data);

		// [[transaction]]
		sprintf(tvout_DNN_out_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_DNN_out_V_last_V, tvout_DNN_out_V_last_V);

		sc_bv<1>* DNN_out_V_last_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: DNN_out_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: DNN_out.V.last.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].last
							// regulate_c_name       : DNN_out_V_last_V
							// input_type_conversion : (aesl_tmp_3[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> DNN_out_V_last_V_tmp_mem;
								DNN_out_V_last_V_tmp_mem = (aesl_tmp_3[i_0].last).to_string(2).c_str();
								DNN_out_V_last_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = DNN_out_V_last_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_DNN_out_V_last_V, "%s\n", (DNN_out_V_last_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_DNN_out_V_last_V, tvout_DNN_out_V_last_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.DNN_out_V_last_V_depth);
		sprintf(tvout_DNN_out_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_DNN_out_V_last_V, tvout_DNN_out_V_last_V);

		// release memory allocation
		delete [] DNN_out_V_last_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_DNN_out_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_DNN_out_V_last_V, wrapc_stream_size_out_DNN_out_V_last_V);
		sprintf(wrapc_stream_size_out_DNN_out_V_last_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_DNN_out_V_last_V, wrapc_stream_size_out_DNN_out_V_last_V);
		sprintf(wrapc_stream_size_out_DNN_out_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_DNN_out_V_last_V, wrapc_stream_size_out_DNN_out_V_last_V);

		// push back output stream: "DNN_out"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			DNN_out.write(aesl_tmp_3[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "LS_stream_V_data"
		delete [] tvin_LS_stream_V_data;
		delete [] wrapc_stream_size_in_LS_stream_V_data;
		// release memory allocation: "LS_stream_V_last_V"
		delete [] tvin_LS_stream_V_last_V;
		delete [] wrapc_stream_size_in_LS_stream_V_last_V;
		// release memory allocation: "DNN_out_V_data"
		delete [] tvout_DNN_out_V_data;
		delete [] tvin_DNN_out_V_data;
		delete [] wrapc_stream_size_out_DNN_out_V_data;
		// release memory allocation: "DNN_out_V_last_V"
		delete [] tvout_DNN_out_V_last_V;
		delete [] tvin_DNN_out_V_last_V;
		delete [] wrapc_stream_size_out_DNN_out_V_last_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

