// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

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


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "image_in"
#define AUTOTB_TVIN_image_in  "../tv/cdatafile/c.conv.autotvin_image_in.dat"
// wrapc file define: "image_out"
#define AUTOTB_TVOUT_image_out  "../tv/cdatafile/c.conv.autotvout_image_out.dat"
#define AUTOTB_TVIN_image_out  "../tv/cdatafile/c.conv.autotvin_image_out.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "image_out"
#define AUTOTB_TVOUT_PC_image_out  "../tv/rtldatafile/rtl.conv.autotvout_image_out.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			image_in_depth = 0;
			image_out_depth = 0;
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
			total_list << "{image_in " << image_in_depth << "}\n";
			total_list << "{image_out " << image_out_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int image_in_depth;
		int image_out_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void conv (
unsigned char image_in[2073600],
unsigned char image_out[2073600]);

void AESL_WRAP_conv (
unsigned char image_in[2073600],
unsigned char image_out[2073600])
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


		// output port post check: "image_out"
		aesl_fh.read(AUTOTB_TVOUT_PC_image_out, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_image_out, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_image_out, AESL_token); // data

			sc_bv<8> *image_out_pc_buffer = new sc_bv<8>[2073600];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'image_out', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'image_out', possible cause: There are uninitialized variables in the C design." << endl;
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
					image_out_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_image_out, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_image_out))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: image_out
				{
					// bitslice(7, 0)
					// {
						// celement: image_out(7, 0)
						// {
							sc_lv<8>* image_out_lv0_0_2073599_1 = new sc_lv<8>[2073600];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: image_out(7, 0)
						{
							// carray: (0) => (2073599) @ (1)
							for (int i_0 = 0; i_0 <= 2073599; i_0 += 1)
							{
								if (&(image_out[0]) != NULL) // check the null address if the c port is array or others
								{
									image_out_lv0_0_2073599_1[hls_map_index].range(7, 0) = sc_bv<8>(image_out_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: image_out(7, 0)
						{
							// carray: (0) => (2073599) @ (1)
							for (int i_0 = 0; i_0 <= 2073599; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : image_out[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : image_out[0]
								// output_left_conversion : image_out[i_0]
								// output_type_conversion : (image_out_lv0_0_2073599_1[hls_map_index]).to_uint64()
								if (&(image_out[0]) != NULL) // check the null address if the c port is array or others
								{
									image_out[i_0] = (image_out_lv0_0_2073599_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] image_out_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "image_in"
		char* tvin_image_in = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_image_in);

		// "image_out"
		char* tvin_image_out = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_image_out);
		char* tvout_image_out = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_image_out);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_image_in, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_image_in, tvin_image_in);

		sc_bv<8>* image_in_tvin_wrapc_buffer = new sc_bv<8>[2073600];

		// RTL Name: image_in
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: image_in(7, 0)
				{
					// carray: (0) => (2073599) @ (1)
					for (int i_0 = 0; i_0 <= 2073599; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : image_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : image_in[0]
						// regulate_c_name       : image_in
						// input_type_conversion : image_in[i_0]
						if (&(image_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> image_in_tmp_mem;
							image_in_tmp_mem = image_in[i_0];
							image_in_tvin_wrapc_buffer[hls_map_index].range(7, 0) = image_in_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2073600; i++)
		{
			sprintf(tvin_image_in, "%s\n", (image_in_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_image_in, tvin_image_in);
		}

		tcl_file.set_num(2073600, &tcl_file.image_in_depth);
		sprintf(tvin_image_in, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_image_in, tvin_image_in);

		// release memory allocation
		delete [] image_in_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_image_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_image_out, tvin_image_out);

		sc_bv<8>* image_out_tvin_wrapc_buffer = new sc_bv<8>[2073600];

		// RTL Name: image_out
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: image_out(7, 0)
				{
					// carray: (0) => (2073599) @ (1)
					for (int i_0 = 0; i_0 <= 2073599; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : image_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : image_out[0]
						// regulate_c_name       : image_out
						// input_type_conversion : image_out[i_0]
						if (&(image_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> image_out_tmp_mem;
							image_out_tmp_mem = image_out[i_0];
							image_out_tvin_wrapc_buffer[hls_map_index].range(7, 0) = image_out_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2073600; i++)
		{
			sprintf(tvin_image_out, "%s\n", (image_out_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_image_out, tvin_image_out);
		}

		tcl_file.set_num(2073600, &tcl_file.image_out_depth);
		sprintf(tvin_image_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_image_out, tvin_image_out);

		// release memory allocation
		delete [] image_out_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		conv(image_in, image_out);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_image_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_image_out, tvout_image_out);

		sc_bv<8>* image_out_tvout_wrapc_buffer = new sc_bv<8>[2073600];

		// RTL Name: image_out
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: image_out(7, 0)
				{
					// carray: (0) => (2073599) @ (1)
					for (int i_0 = 0; i_0 <= 2073599; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : image_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : image_out[0]
						// regulate_c_name       : image_out
						// input_type_conversion : image_out[i_0]
						if (&(image_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> image_out_tmp_mem;
							image_out_tmp_mem = image_out[i_0];
							image_out_tvout_wrapc_buffer[hls_map_index].range(7, 0) = image_out_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2073600; i++)
		{
			sprintf(tvout_image_out, "%s\n", (image_out_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_image_out, tvout_image_out);
		}

		tcl_file.set_num(2073600, &tcl_file.image_out_depth);
		sprintf(tvout_image_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_image_out, tvout_image_out);

		// release memory allocation
		delete [] image_out_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "image_in"
		delete [] tvin_image_in;
		// release memory allocation: "image_out"
		delete [] tvout_image_out;
		delete [] tvin_image_out;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

