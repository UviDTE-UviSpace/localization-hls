// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
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
#pragma pack(1)
    template< int D ,int U ,int TI ,int TD > struct ap_axiu;
    template<> struct ap_axiu<8, 1, 1, 1> {
        ap_uint<8> data;
        ap_uint<1> keep;
        ap_uint<1> strb;
        ap_uint<1> user;
        ap_uint<1> last;
        ap_uint<1> id;
        ap_uint<1> dest;
       } ;

#pragma pack()


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "video_in_V_data_V"
#define AUTOTB_TVIN_video_in_V_data_V  "../tv/cdatafile/c.passthrough.autotvin_video_in_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_data_V  "../tv/stream_size/stream_size_in_video_in_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V  "../tv/stream_size/stream_ingress_status_video_in_V_data_V.dat"
// wrapc file define: "video_in_V_keep_V"
#define AUTOTB_TVIN_video_in_V_keep_V  "../tv/cdatafile/c.passthrough.autotvin_video_in_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_keep_V  "../tv/stream_size/stream_size_in_video_in_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V  "../tv/stream_size/stream_ingress_status_video_in_V_keep_V.dat"
// wrapc file define: "video_in_V_strb_V"
#define AUTOTB_TVIN_video_in_V_strb_V  "../tv/cdatafile/c.passthrough.autotvin_video_in_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_strb_V  "../tv/stream_size/stream_size_in_video_in_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V  "../tv/stream_size/stream_ingress_status_video_in_V_strb_V.dat"
// wrapc file define: "video_in_V_user_V"
#define AUTOTB_TVIN_video_in_V_user_V  "../tv/cdatafile/c.passthrough.autotvin_video_in_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_user_V  "../tv/stream_size/stream_size_in_video_in_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V  "../tv/stream_size/stream_ingress_status_video_in_V_user_V.dat"
// wrapc file define: "video_in_V_last_V"
#define AUTOTB_TVIN_video_in_V_last_V  "../tv/cdatafile/c.passthrough.autotvin_video_in_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_last_V  "../tv/stream_size/stream_size_in_video_in_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V  "../tv/stream_size/stream_ingress_status_video_in_V_last_V.dat"
// wrapc file define: "video_in_V_id_V"
#define AUTOTB_TVIN_video_in_V_id_V  "../tv/cdatafile/c.passthrough.autotvin_video_in_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_id_V  "../tv/stream_size/stream_size_in_video_in_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V  "../tv/stream_size/stream_ingress_status_video_in_V_id_V.dat"
// wrapc file define: "video_in_V_dest_V"
#define AUTOTB_TVIN_video_in_V_dest_V  "../tv/cdatafile/c.passthrough.autotvin_video_in_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_dest_V  "../tv/stream_size/stream_size_in_video_in_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V  "../tv/stream_size/stream_ingress_status_video_in_V_dest_V.dat"
// wrapc file define: "video_out_V_data_V"
#define AUTOTB_TVOUT_video_out_V_data_V  "../tv/cdatafile/c.passthrough.autotvout_video_out_V_data_V.dat"
#define AUTOTB_TVIN_video_out_V_data_V  "../tv/cdatafile/c.passthrough.autotvin_video_out_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_video_out_V_data_V  "../tv/stream_size/stream_size_out_video_out_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_video_out_V_data_V  "../tv/stream_size/stream_egress_status_video_out_V_data_V.dat"
// wrapc file define: "video_out_V_keep_V"
#define AUTOTB_TVOUT_video_out_V_keep_V  "../tv/cdatafile/c.passthrough.autotvout_video_out_V_keep_V.dat"
#define AUTOTB_TVIN_video_out_V_keep_V  "../tv/cdatafile/c.passthrough.autotvin_video_out_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_video_out_V_keep_V  "../tv/stream_size/stream_size_out_video_out_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_video_out_V_keep_V  "../tv/stream_size/stream_egress_status_video_out_V_keep_V.dat"
// wrapc file define: "video_out_V_strb_V"
#define AUTOTB_TVOUT_video_out_V_strb_V  "../tv/cdatafile/c.passthrough.autotvout_video_out_V_strb_V.dat"
#define AUTOTB_TVIN_video_out_V_strb_V  "../tv/cdatafile/c.passthrough.autotvin_video_out_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_video_out_V_strb_V  "../tv/stream_size/stream_size_out_video_out_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_video_out_V_strb_V  "../tv/stream_size/stream_egress_status_video_out_V_strb_V.dat"
// wrapc file define: "video_out_V_user_V"
#define AUTOTB_TVOUT_video_out_V_user_V  "../tv/cdatafile/c.passthrough.autotvout_video_out_V_user_V.dat"
#define AUTOTB_TVIN_video_out_V_user_V  "../tv/cdatafile/c.passthrough.autotvin_video_out_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_video_out_V_user_V  "../tv/stream_size/stream_size_out_video_out_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_video_out_V_user_V  "../tv/stream_size/stream_egress_status_video_out_V_user_V.dat"
// wrapc file define: "video_out_V_last_V"
#define AUTOTB_TVOUT_video_out_V_last_V  "../tv/cdatafile/c.passthrough.autotvout_video_out_V_last_V.dat"
#define AUTOTB_TVIN_video_out_V_last_V  "../tv/cdatafile/c.passthrough.autotvin_video_out_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_video_out_V_last_V  "../tv/stream_size/stream_size_out_video_out_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_video_out_V_last_V  "../tv/stream_size/stream_egress_status_video_out_V_last_V.dat"
// wrapc file define: "video_out_V_id_V"
#define AUTOTB_TVOUT_video_out_V_id_V  "../tv/cdatafile/c.passthrough.autotvout_video_out_V_id_V.dat"
#define AUTOTB_TVIN_video_out_V_id_V  "../tv/cdatafile/c.passthrough.autotvin_video_out_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_video_out_V_id_V  "../tv/stream_size/stream_size_out_video_out_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_video_out_V_id_V  "../tv/stream_size/stream_egress_status_video_out_V_id_V.dat"
// wrapc file define: "video_out_V_dest_V"
#define AUTOTB_TVOUT_video_out_V_dest_V  "../tv/cdatafile/c.passthrough.autotvout_video_out_V_dest_V.dat"
#define AUTOTB_TVIN_video_out_V_dest_V  "../tv/cdatafile/c.passthrough.autotvin_video_out_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_video_out_V_dest_V  "../tv/stream_size/stream_size_out_video_out_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_video_out_V_dest_V  "../tv/stream_size/stream_egress_status_video_out_V_dest_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "video_out_V_data_V"
#define AUTOTB_TVOUT_PC_video_out_V_data_V  "../tv/rtldatafile/rtl.passthrough.autotvout_video_out_V_data_V.dat"
// tvout file define: "video_out_V_keep_V"
#define AUTOTB_TVOUT_PC_video_out_V_keep_V  "../tv/rtldatafile/rtl.passthrough.autotvout_video_out_V_keep_V.dat"
// tvout file define: "video_out_V_strb_V"
#define AUTOTB_TVOUT_PC_video_out_V_strb_V  "../tv/rtldatafile/rtl.passthrough.autotvout_video_out_V_strb_V.dat"
// tvout file define: "video_out_V_user_V"
#define AUTOTB_TVOUT_PC_video_out_V_user_V  "../tv/rtldatafile/rtl.passthrough.autotvout_video_out_V_user_V.dat"
// tvout file define: "video_out_V_last_V"
#define AUTOTB_TVOUT_PC_video_out_V_last_V  "../tv/rtldatafile/rtl.passthrough.autotvout_video_out_V_last_V.dat"
// tvout file define: "video_out_V_id_V"
#define AUTOTB_TVOUT_PC_video_out_V_id_V  "../tv/rtldatafile/rtl.passthrough.autotvout_video_out_V_id_V.dat"
// tvout file define: "video_out_V_dest_V"
#define AUTOTB_TVOUT_PC_video_out_V_dest_V  "../tv/rtldatafile/rtl.passthrough.autotvout_video_out_V_dest_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			video_in_V_data_V_depth = 0;
			video_in_V_keep_V_depth = 0;
			video_in_V_strb_V_depth = 0;
			video_in_V_user_V_depth = 0;
			video_in_V_last_V_depth = 0;
			video_in_V_id_V_depth = 0;
			video_in_V_dest_V_depth = 0;
			video_out_V_data_V_depth = 0;
			video_out_V_keep_V_depth = 0;
			video_out_V_strb_V_depth = 0;
			video_out_V_user_V_depth = 0;
			video_out_V_last_V_depth = 0;
			video_out_V_id_V_depth = 0;
			video_out_V_dest_V_depth = 0;
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
			total_list << "{video_in_V_data_V " << video_in_V_data_V_depth << "}\n";
			total_list << "{video_in_V_keep_V " << video_in_V_keep_V_depth << "}\n";
			total_list << "{video_in_V_strb_V " << video_in_V_strb_V_depth << "}\n";
			total_list << "{video_in_V_user_V " << video_in_V_user_V_depth << "}\n";
			total_list << "{video_in_V_last_V " << video_in_V_last_V_depth << "}\n";
			total_list << "{video_in_V_id_V " << video_in_V_id_V_depth << "}\n";
			total_list << "{video_in_V_dest_V " << video_in_V_dest_V_depth << "}\n";
			total_list << "{video_out_V_data_V " << video_out_V_data_V_depth << "}\n";
			total_list << "{video_out_V_keep_V " << video_out_V_keep_V_depth << "}\n";
			total_list << "{video_out_V_strb_V " << video_out_V_strb_V_depth << "}\n";
			total_list << "{video_out_V_user_V " << video_out_V_user_V_depth << "}\n";
			total_list << "{video_out_V_last_V " << video_out_V_last_V_depth << "}\n";
			total_list << "{video_out_V_id_V " << video_out_V_id_V_depth << "}\n";
			total_list << "{video_out_V_dest_V " << video_out_V_dest_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int video_in_V_data_V_depth;
		int video_in_V_keep_V_depth;
		int video_in_V_strb_V_depth;
		int video_in_V_user_V_depth;
		int video_in_V_last_V_depth;
		int video_in_V_id_V_depth;
		int video_in_V_dest_V_depth;
		int video_out_V_data_V_depth;
		int video_out_V_keep_V_depth;
		int video_out_V_strb_V_depth;
		int video_out_V_user_V_depth;
		int video_out_V_last_V_depth;
		int video_out_V_id_V_depth;
		int video_out_V_dest_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void passthrough (
hls::stream<ap_axiu<8, 1, 1, 1 > > (&video_in),
hls::stream<ap_axiu<8, 1, 1, 1 > > (&video_out));

void AESL_WRAP_passthrough (
hls::stream<ap_axiu<8, 1, 1, 1 > > (&video_in),
hls::stream<ap_axiu<8, 1, 1, 1 > > (&video_out))
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

		// pop stream input: "video_in"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				video_in.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "video_out"
		std::vector<ap_axiu<8, 1, 1, 1 > > aesl_tmp_3;
		int aesl_tmp_4;
		int aesl_tmp_5 = 0;

		// read output stream size: "video_out"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_video_out_V_data_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_video_out_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_video_out_V_data_V, AESL_token); // pop_size
			aesl_tmp_4 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_video_out_V_data_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "video_out_V_data_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_data_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_data_V, AESL_token); // data

			std::vector<sc_bv<8> > video_out_V_data_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_data_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_data_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					video_out_V_data_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_data_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_video_out_V_data_V))
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
					ap_axiu<8, 1, 1, 1 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: video_out_V_data_V
				{
					// bitslice(7, 0)
					// {
						// celement: video_out.V.data.V(7, 0)
						// {
							sc_lv<8>* video_out_V_data_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<8>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.data.V(7, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										video_out_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(7, 0) = sc_bv<8>(video_out_V_data_V_pc_buffer[hls_map_index].range(7, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.data.V(7, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].data
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].data
									// output_left_conversion : aesl_tmp_3[i_0].data
									// output_type_conversion : (video_out_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].data = (video_out_V_data_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "video_out_V_keep_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_keep_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_keep_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_keep_V, AESL_token); // data

			std::vector<sc_bv<1> > video_out_V_keep_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					video_out_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_keep_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_video_out_V_keep_V))
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
					ap_axiu<8, 1, 1, 1 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: video_out_V_keep_V
				{
					// bitslice(0, 0)
					// {
						// celement: video_out.V.keep.V(0, 0)
						// {
							sc_lv<1>* video_out_V_keep_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.keep.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].keep) != NULL) // check the null address if the c port is array or others
									{
										video_out_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(video_out_V_keep_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.keep.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].keep
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].keep
									// output_left_conversion : aesl_tmp_3[i_0].keep
									// output_type_conversion : (video_out_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].keep) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].keep = (video_out_V_keep_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "video_out_V_strb_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_strb_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_strb_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_strb_V, AESL_token); // data

			std::vector<sc_bv<1> > video_out_V_strb_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					video_out_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_strb_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_video_out_V_strb_V))
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
					ap_axiu<8, 1, 1, 1 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: video_out_V_strb_V
				{
					// bitslice(0, 0)
					// {
						// celement: video_out.V.strb.V(0, 0)
						// {
							sc_lv<1>* video_out_V_strb_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.strb.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].strb) != NULL) // check the null address if the c port is array or others
									{
										video_out_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(video_out_V_strb_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.strb.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].strb
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].strb
									// output_left_conversion : aesl_tmp_3[i_0].strb
									// output_type_conversion : (video_out_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].strb) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].strb = (video_out_V_strb_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "video_out_V_user_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_user_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_user_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_user_V, AESL_token); // data

			std::vector<sc_bv<1> > video_out_V_user_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_user_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_user_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					video_out_V_user_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_user_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_video_out_V_user_V))
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
					ap_axiu<8, 1, 1, 1 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: video_out_V_user_V
				{
					// bitslice(0, 0)
					// {
						// celement: video_out.V.user.V(0, 0)
						// {
							sc_lv<1>* video_out_V_user_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.user.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].user) != NULL) // check the null address if the c port is array or others
									{
										video_out_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(video_out_V_user_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.user.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].user
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].user
									// output_left_conversion : aesl_tmp_3[i_0].user
									// output_type_conversion : (video_out_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].user) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].user = (video_out_V_user_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "video_out_V_last_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_last_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_last_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_last_V, AESL_token); // data

			std::vector<sc_bv<1> > video_out_V_last_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_last_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					video_out_V_last_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_last_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_video_out_V_last_V))
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
					ap_axiu<8, 1, 1, 1 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: video_out_V_last_V
				{
					// bitslice(0, 0)
					// {
						// celement: video_out.V.last.V(0, 0)
						// {
							sc_lv<1>* video_out_V_last_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.last.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										video_out_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(video_out_V_last_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.last.V(0, 0)
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
									// output_type_conversion : (video_out_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].last = (video_out_V_last_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "video_out_V_id_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_id_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_id_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_id_V, AESL_token); // data

			std::vector<sc_bv<1> > video_out_V_id_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_id_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_id_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					video_out_V_id_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_id_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_video_out_V_id_V))
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
					ap_axiu<8, 1, 1, 1 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: video_out_V_id_V
				{
					// bitslice(0, 0)
					// {
						// celement: video_out.V.id.V(0, 0)
						// {
							sc_lv<1>* video_out_V_id_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.id.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].id) != NULL) // check the null address if the c port is array or others
									{
										video_out_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(video_out_V_id_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.id.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].id
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].id
									// output_left_conversion : aesl_tmp_3[i_0].id
									// output_type_conversion : (video_out_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].id) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].id = (video_out_V_id_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "video_out_V_dest_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_dest_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_dest_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_dest_V, AESL_token); // data

			std::vector<sc_bv<1> > video_out_V_dest_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'video_out_V_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					video_out_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_video_out_V_dest_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_video_out_V_dest_V))
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
					ap_axiu<8, 1, 1, 1 > tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: video_out_V_dest_V
				{
					// bitslice(0, 0)
					// {
						// celement: video_out.V.dest.V(0, 0)
						// {
							sc_lv<1>* video_out_V_dest_V_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.dest.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].dest) != NULL) // check the null address if the c port is array or others
									{
										video_out_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(video_out_V_dest_V_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: video_out.V.dest.V(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].dest
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].dest
									// output_left_conversion : aesl_tmp_3[i_0].dest
									// output_type_conversion : (video_out_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_3[0].dest) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].dest = (video_out_V_dest_V_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "video_out"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			video_out.write(aesl_tmp_3[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "video_in_V_data_V"
		char* tvin_video_in_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_data_V);
		char* wrapc_stream_size_in_video_in_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_data_V);
		char* wrapc_stream_ingress_status_video_in_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V);

		// "video_in_V_keep_V"
		char* tvin_video_in_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_keep_V);
		char* wrapc_stream_size_in_video_in_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_keep_V);
		char* wrapc_stream_ingress_status_video_in_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V);

		// "video_in_V_strb_V"
		char* tvin_video_in_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_strb_V);
		char* wrapc_stream_size_in_video_in_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_strb_V);
		char* wrapc_stream_ingress_status_video_in_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V);

		// "video_in_V_user_V"
		char* tvin_video_in_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_user_V);
		char* wrapc_stream_size_in_video_in_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_user_V);
		char* wrapc_stream_ingress_status_video_in_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V);

		// "video_in_V_last_V"
		char* tvin_video_in_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_last_V);
		char* wrapc_stream_size_in_video_in_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_last_V);
		char* wrapc_stream_ingress_status_video_in_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V);

		// "video_in_V_id_V"
		char* tvin_video_in_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_id_V);
		char* wrapc_stream_size_in_video_in_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_id_V);
		char* wrapc_stream_ingress_status_video_in_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V);

		// "video_in_V_dest_V"
		char* tvin_video_in_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_dest_V);
		char* wrapc_stream_size_in_video_in_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_dest_V);
		char* wrapc_stream_ingress_status_video_in_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V);

		// "video_out_V_data_V"
		char* tvin_video_out_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_out_V_data_V);
		char* tvout_video_out_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_video_out_V_data_V);
		char* wrapc_stream_size_out_video_out_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_video_out_V_data_V);
		char* wrapc_stream_egress_status_video_out_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_video_out_V_data_V);

		// "video_out_V_keep_V"
		char* tvin_video_out_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_out_V_keep_V);
		char* tvout_video_out_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_video_out_V_keep_V);
		char* wrapc_stream_size_out_video_out_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_video_out_V_keep_V);
		char* wrapc_stream_egress_status_video_out_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_video_out_V_keep_V);

		// "video_out_V_strb_V"
		char* tvin_video_out_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_out_V_strb_V);
		char* tvout_video_out_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_video_out_V_strb_V);
		char* wrapc_stream_size_out_video_out_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_video_out_V_strb_V);
		char* wrapc_stream_egress_status_video_out_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_video_out_V_strb_V);

		// "video_out_V_user_V"
		char* tvin_video_out_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_out_V_user_V);
		char* tvout_video_out_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_video_out_V_user_V);
		char* wrapc_stream_size_out_video_out_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_video_out_V_user_V);
		char* wrapc_stream_egress_status_video_out_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_video_out_V_user_V);

		// "video_out_V_last_V"
		char* tvin_video_out_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_out_V_last_V);
		char* tvout_video_out_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_video_out_V_last_V);
		char* wrapc_stream_size_out_video_out_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_video_out_V_last_V);
		char* wrapc_stream_egress_status_video_out_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_video_out_V_last_V);

		// "video_out_V_id_V"
		char* tvin_video_out_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_out_V_id_V);
		char* tvout_video_out_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_video_out_V_id_V);
		char* wrapc_stream_size_out_video_out_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_video_out_V_id_V);
		char* wrapc_stream_egress_status_video_out_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_video_out_V_id_V);

		// "video_out_V_dest_V"
		char* tvin_video_out_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_out_V_dest_V);
		char* tvout_video_out_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_video_out_V_dest_V);
		char* wrapc_stream_size_out_video_out_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_video_out_V_dest_V);
		char* wrapc_stream_egress_status_video_out_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_video_out_V_dest_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "video_in"
		std::vector<ap_axiu<8, 1, 1, 1 > > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!video_in.empty())
		{
			aesl_tmp_0.push_back(video_in.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "video_out"
		std::vector<ap_axiu<8, 1, 1, 1 > > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!video_out.empty())
		{
			aesl_tmp_3.push_back(video_out.read());
			aesl_tmp_4++;
		}

		// push back input stream: "video_in"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			video_in.write(aesl_tmp_0[i]);
		}

		// push back input stream: "video_out"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			video_out.write(aesl_tmp_3[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		passthrough(video_in, video_out);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "video_in"
		int aesl_tmp_2 = video_in.size();

		// pop output stream: "video_out"
		int aesl_tmp_5 = aesl_tmp_4;
		aesl_tmp_4 = 0;
     aesl_tmp_3.clear();
		while (!video_out.empty())
		{
			aesl_tmp_3.push_back(video_out.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_video_in_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_data_V, tvin_video_in_V_data_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, tvin_video_in_V_data_V);

		sc_bv<8>* video_in_V_data_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_data_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].data
							// regulate_c_name       : video_in_V_data_V
							// input_type_conversion : (aesl_tmp_0[i_0].data).to_string(2).c_str()
							if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> video_in_V_data_V_tmp_mem;
								video_in_V_data_V_tmp_mem = (aesl_tmp_0[i_0].data).to_string(2).c_str();
								video_in_V_data_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = video_in_V_data_V_tmp_mem.range(7, 0);
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
			sprintf(tvin_video_in_V_data_V, "%s\n", (video_in_V_data_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_data_V, tvin_video_in_V_data_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_data_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, stream_ingress_size_video_in_V_data_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_data_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, stream_ingress_size_video_in_V_data_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_data_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, stream_ingress_size_video_in_V_data_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_data_V_depth);
		sprintf(tvin_video_in_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_data_V, tvin_video_in_V_data_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, tvin_video_in_V_data_V);

		// release memory allocation
		delete [] video_in_V_data_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, wrapc_stream_size_in_video_in_V_data_V);
		sprintf(wrapc_stream_size_in_video_in_V_data_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, wrapc_stream_size_in_video_in_V_data_V);
		sprintf(wrapc_stream_size_in_video_in_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, wrapc_stream_size_in_video_in_V_data_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_keep_V, tvin_video_in_V_keep_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, tvin_video_in_V_keep_V);

		sc_bv<1>* video_in_V_keep_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_keep_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.keep.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].keep
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].keep
							// regulate_c_name       : video_in_V_keep_V
							// input_type_conversion : (aesl_tmp_0[i_0].keep).to_string(2).c_str()
							if (&(aesl_tmp_0[0].keep) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_keep_V_tmp_mem;
								video_in_V_keep_V_tmp_mem = (aesl_tmp_0[i_0].keep).to_string(2).c_str();
								video_in_V_keep_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_keep_V_tmp_mem.range(0, 0);
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
			sprintf(tvin_video_in_V_keep_V, "%s\n", (video_in_V_keep_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_keep_V, tvin_video_in_V_keep_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_keep_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, stream_ingress_size_video_in_V_keep_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_keep_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, stream_ingress_size_video_in_V_keep_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_keep_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, stream_ingress_size_video_in_V_keep_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_keep_V_depth);
		sprintf(tvin_video_in_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_keep_V, tvin_video_in_V_keep_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, tvin_video_in_V_keep_V);

		// release memory allocation
		delete [] video_in_V_keep_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_keep_V, wrapc_stream_size_in_video_in_V_keep_V);
		sprintf(wrapc_stream_size_in_video_in_V_keep_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_keep_V, wrapc_stream_size_in_video_in_V_keep_V);
		sprintf(wrapc_stream_size_in_video_in_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_keep_V, wrapc_stream_size_in_video_in_V_keep_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_strb_V, tvin_video_in_V_strb_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, tvin_video_in_V_strb_V);

		sc_bv<1>* video_in_V_strb_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_strb_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.strb.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].strb
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].strb
							// regulate_c_name       : video_in_V_strb_V
							// input_type_conversion : (aesl_tmp_0[i_0].strb).to_string(2).c_str()
							if (&(aesl_tmp_0[0].strb) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_strb_V_tmp_mem;
								video_in_V_strb_V_tmp_mem = (aesl_tmp_0[i_0].strb).to_string(2).c_str();
								video_in_V_strb_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_strb_V_tmp_mem.range(0, 0);
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
			sprintf(tvin_video_in_V_strb_V, "%s\n", (video_in_V_strb_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_strb_V, tvin_video_in_V_strb_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_strb_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, stream_ingress_size_video_in_V_strb_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_strb_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, stream_ingress_size_video_in_V_strb_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_strb_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, stream_ingress_size_video_in_V_strb_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_strb_V_depth);
		sprintf(tvin_video_in_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_strb_V, tvin_video_in_V_strb_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, tvin_video_in_V_strb_V);

		// release memory allocation
		delete [] video_in_V_strb_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_strb_V, wrapc_stream_size_in_video_in_V_strb_V);
		sprintf(wrapc_stream_size_in_video_in_V_strb_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_strb_V, wrapc_stream_size_in_video_in_V_strb_V);
		sprintf(wrapc_stream_size_in_video_in_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_strb_V, wrapc_stream_size_in_video_in_V_strb_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_user_V, tvin_video_in_V_user_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, tvin_video_in_V_user_V);

		sc_bv<1>* video_in_V_user_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_user_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.user.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].user
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].user
							// regulate_c_name       : video_in_V_user_V
							// input_type_conversion : (aesl_tmp_0[i_0].user).to_string(2).c_str()
							if (&(aesl_tmp_0[0].user) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_user_V_tmp_mem;
								video_in_V_user_V_tmp_mem = (aesl_tmp_0[i_0].user).to_string(2).c_str();
								video_in_V_user_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_user_V_tmp_mem.range(0, 0);
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
			sprintf(tvin_video_in_V_user_V, "%s\n", (video_in_V_user_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_user_V, tvin_video_in_V_user_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_user_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, stream_ingress_size_video_in_V_user_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_user_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, stream_ingress_size_video_in_V_user_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_user_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, stream_ingress_size_video_in_V_user_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_user_V_depth);
		sprintf(tvin_video_in_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_user_V, tvin_video_in_V_user_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, tvin_video_in_V_user_V);

		// release memory allocation
		delete [] video_in_V_user_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_user_V, wrapc_stream_size_in_video_in_V_user_V);
		sprintf(wrapc_stream_size_in_video_in_V_user_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_user_V, wrapc_stream_size_in_video_in_V_user_V);
		sprintf(wrapc_stream_size_in_video_in_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_user_V, wrapc_stream_size_in_video_in_V_user_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_last_V, tvin_video_in_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, tvin_video_in_V_last_V);

		sc_bv<1>* video_in_V_last_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.last.V(0, 0)
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
							// regulate_c_name       : video_in_V_last_V
							// input_type_conversion : (aesl_tmp_0[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_last_V_tmp_mem;
								video_in_V_last_V_tmp_mem = (aesl_tmp_0[i_0].last).to_string(2).c_str();
								video_in_V_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_last_V_tmp_mem.range(0, 0);
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
			sprintf(tvin_video_in_V_last_V, "%s\n", (video_in_V_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_last_V, tvin_video_in_V_last_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_last_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, stream_ingress_size_video_in_V_last_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_last_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, stream_ingress_size_video_in_V_last_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_last_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, stream_ingress_size_video_in_V_last_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_last_V_depth);
		sprintf(tvin_video_in_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_last_V, tvin_video_in_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, tvin_video_in_V_last_V);

		// release memory allocation
		delete [] video_in_V_last_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_last_V, wrapc_stream_size_in_video_in_V_last_V);
		sprintf(wrapc_stream_size_in_video_in_V_last_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_last_V, wrapc_stream_size_in_video_in_V_last_V);
		sprintf(wrapc_stream_size_in_video_in_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_last_V, wrapc_stream_size_in_video_in_V_last_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_id_V, tvin_video_in_V_id_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, tvin_video_in_V_id_V);

		sc_bv<1>* video_in_V_id_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_id_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.id.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].id
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].id
							// regulate_c_name       : video_in_V_id_V
							// input_type_conversion : (aesl_tmp_0[i_0].id).to_string(2).c_str()
							if (&(aesl_tmp_0[0].id) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_id_V_tmp_mem;
								video_in_V_id_V_tmp_mem = (aesl_tmp_0[i_0].id).to_string(2).c_str();
								video_in_V_id_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_id_V_tmp_mem.range(0, 0);
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
			sprintf(tvin_video_in_V_id_V, "%s\n", (video_in_V_id_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_id_V, tvin_video_in_V_id_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_id_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, stream_ingress_size_video_in_V_id_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_id_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, stream_ingress_size_video_in_V_id_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_id_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, stream_ingress_size_video_in_V_id_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_id_V_depth);
		sprintf(tvin_video_in_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_id_V, tvin_video_in_V_id_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, tvin_video_in_V_id_V);

		// release memory allocation
		delete [] video_in_V_id_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_id_V, wrapc_stream_size_in_video_in_V_id_V);
		sprintf(wrapc_stream_size_in_video_in_V_id_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_id_V, wrapc_stream_size_in_video_in_V_id_V);
		sprintf(wrapc_stream_size_in_video_in_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_id_V, wrapc_stream_size_in_video_in_V_id_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_dest_V, tvin_video_in_V_dest_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, tvin_video_in_V_dest_V);

		sc_bv<1>* video_in_V_dest_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_dest_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.dest.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].dest
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].dest
							// regulate_c_name       : video_in_V_dest_V
							// input_type_conversion : (aesl_tmp_0[i_0].dest).to_string(2).c_str()
							if (&(aesl_tmp_0[0].dest) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_dest_V_tmp_mem;
								video_in_V_dest_V_tmp_mem = (aesl_tmp_0[i_0].dest).to_string(2).c_str();
								video_in_V_dest_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_dest_V_tmp_mem.range(0, 0);
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
			sprintf(tvin_video_in_V_dest_V, "%s\n", (video_in_V_dest_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_dest_V, tvin_video_in_V_dest_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_dest_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, stream_ingress_size_video_in_V_dest_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_dest_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, stream_ingress_size_video_in_V_dest_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_dest_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, stream_ingress_size_video_in_V_dest_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_dest_V_depth);
		sprintf(tvin_video_in_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_dest_V, tvin_video_in_V_dest_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, tvin_video_in_V_dest_V);

		// release memory allocation
		delete [] video_in_V_dest_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_dest_V, wrapc_stream_size_in_video_in_V_dest_V);
		sprintf(wrapc_stream_size_in_video_in_V_dest_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_dest_V, wrapc_stream_size_in_video_in_V_dest_V);
		sprintf(wrapc_stream_size_in_video_in_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_dest_V, wrapc_stream_size_in_video_in_V_dest_V);

		// [[transaction]]
		sprintf(tvout_video_out_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_data_V, tvout_video_out_V_data_V);

		sc_bv<8>* video_out_V_data_V_tvout_wrapc_buffer = new sc_bv<8>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: video_out_V_data_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: video_out.V.data.V(7, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].data
							// regulate_c_name       : video_out_V_data_V
							// input_type_conversion : (aesl_tmp_3[i_0].data).to_string(2).c_str()
							if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> video_out_V_data_V_tmp_mem;
								video_out_V_data_V_tmp_mem = (aesl_tmp_3[i_0].data).to_string(2).c_str();
								video_out_V_data_V_tvout_wrapc_buffer[hls_map_index].range(7, 0) = video_out_V_data_V_tmp_mem.range(7, 0);
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
			sprintf(tvout_video_out_V_data_V, "%s\n", (video_out_V_data_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_video_out_V_data_V, tvout_video_out_V_data_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.video_out_V_data_V_depth);
		sprintf(tvout_video_out_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_data_V, tvout_video_out_V_data_V);

		// release memory allocation
		delete [] video_out_V_data_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_video_out_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_data_V, wrapc_stream_size_out_video_out_V_data_V);
		sprintf(wrapc_stream_size_out_video_out_V_data_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_data_V, wrapc_stream_size_out_video_out_V_data_V);
		sprintf(wrapc_stream_size_out_video_out_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_data_V, wrapc_stream_size_out_video_out_V_data_V);

		// [[transaction]]
		sprintf(tvout_video_out_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_keep_V, tvout_video_out_V_keep_V);

		sc_bv<1>* video_out_V_keep_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: video_out_V_keep_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_out.V.keep.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].keep
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].keep
							// regulate_c_name       : video_out_V_keep_V
							// input_type_conversion : (aesl_tmp_3[i_0].keep).to_string(2).c_str()
							if (&(aesl_tmp_3[0].keep) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_out_V_keep_V_tmp_mem;
								video_out_V_keep_V_tmp_mem = (aesl_tmp_3[i_0].keep).to_string(2).c_str();
								video_out_V_keep_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = video_out_V_keep_V_tmp_mem.range(0, 0);
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
			sprintf(tvout_video_out_V_keep_V, "%s\n", (video_out_V_keep_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_video_out_V_keep_V, tvout_video_out_V_keep_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.video_out_V_keep_V_depth);
		sprintf(tvout_video_out_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_keep_V, tvout_video_out_V_keep_V);

		// release memory allocation
		delete [] video_out_V_keep_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_video_out_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_keep_V, wrapc_stream_size_out_video_out_V_keep_V);
		sprintf(wrapc_stream_size_out_video_out_V_keep_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_keep_V, wrapc_stream_size_out_video_out_V_keep_V);
		sprintf(wrapc_stream_size_out_video_out_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_keep_V, wrapc_stream_size_out_video_out_V_keep_V);

		// [[transaction]]
		sprintf(tvout_video_out_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_strb_V, tvout_video_out_V_strb_V);

		sc_bv<1>* video_out_V_strb_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: video_out_V_strb_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_out.V.strb.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].strb
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].strb
							// regulate_c_name       : video_out_V_strb_V
							// input_type_conversion : (aesl_tmp_3[i_0].strb).to_string(2).c_str()
							if (&(aesl_tmp_3[0].strb) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_out_V_strb_V_tmp_mem;
								video_out_V_strb_V_tmp_mem = (aesl_tmp_3[i_0].strb).to_string(2).c_str();
								video_out_V_strb_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = video_out_V_strb_V_tmp_mem.range(0, 0);
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
			sprintf(tvout_video_out_V_strb_V, "%s\n", (video_out_V_strb_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_video_out_V_strb_V, tvout_video_out_V_strb_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.video_out_V_strb_V_depth);
		sprintf(tvout_video_out_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_strb_V, tvout_video_out_V_strb_V);

		// release memory allocation
		delete [] video_out_V_strb_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_video_out_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_strb_V, wrapc_stream_size_out_video_out_V_strb_V);
		sprintf(wrapc_stream_size_out_video_out_V_strb_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_strb_V, wrapc_stream_size_out_video_out_V_strb_V);
		sprintf(wrapc_stream_size_out_video_out_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_strb_V, wrapc_stream_size_out_video_out_V_strb_V);

		// [[transaction]]
		sprintf(tvout_video_out_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_user_V, tvout_video_out_V_user_V);

		sc_bv<1>* video_out_V_user_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: video_out_V_user_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_out.V.user.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].user
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].user
							// regulate_c_name       : video_out_V_user_V
							// input_type_conversion : (aesl_tmp_3[i_0].user).to_string(2).c_str()
							if (&(aesl_tmp_3[0].user) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_out_V_user_V_tmp_mem;
								video_out_V_user_V_tmp_mem = (aesl_tmp_3[i_0].user).to_string(2).c_str();
								video_out_V_user_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = video_out_V_user_V_tmp_mem.range(0, 0);
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
			sprintf(tvout_video_out_V_user_V, "%s\n", (video_out_V_user_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_video_out_V_user_V, tvout_video_out_V_user_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.video_out_V_user_V_depth);
		sprintf(tvout_video_out_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_user_V, tvout_video_out_V_user_V);

		// release memory allocation
		delete [] video_out_V_user_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_video_out_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_user_V, wrapc_stream_size_out_video_out_V_user_V);
		sprintf(wrapc_stream_size_out_video_out_V_user_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_user_V, wrapc_stream_size_out_video_out_V_user_V);
		sprintf(wrapc_stream_size_out_video_out_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_user_V, wrapc_stream_size_out_video_out_V_user_V);

		// [[transaction]]
		sprintf(tvout_video_out_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_last_V, tvout_video_out_V_last_V);

		sc_bv<1>* video_out_V_last_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: video_out_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_out.V.last.V(0, 0)
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
							// regulate_c_name       : video_out_V_last_V
							// input_type_conversion : (aesl_tmp_3[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_out_V_last_V_tmp_mem;
								video_out_V_last_V_tmp_mem = (aesl_tmp_3[i_0].last).to_string(2).c_str();
								video_out_V_last_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = video_out_V_last_V_tmp_mem.range(0, 0);
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
			sprintf(tvout_video_out_V_last_V, "%s\n", (video_out_V_last_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_video_out_V_last_V, tvout_video_out_V_last_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.video_out_V_last_V_depth);
		sprintf(tvout_video_out_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_last_V, tvout_video_out_V_last_V);

		// release memory allocation
		delete [] video_out_V_last_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_video_out_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_last_V, wrapc_stream_size_out_video_out_V_last_V);
		sprintf(wrapc_stream_size_out_video_out_V_last_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_last_V, wrapc_stream_size_out_video_out_V_last_V);
		sprintf(wrapc_stream_size_out_video_out_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_last_V, wrapc_stream_size_out_video_out_V_last_V);

		// [[transaction]]
		sprintf(tvout_video_out_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_id_V, tvout_video_out_V_id_V);

		sc_bv<1>* video_out_V_id_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: video_out_V_id_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_out.V.id.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].id
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].id
							// regulate_c_name       : video_out_V_id_V
							// input_type_conversion : (aesl_tmp_3[i_0].id).to_string(2).c_str()
							if (&(aesl_tmp_3[0].id) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_out_V_id_V_tmp_mem;
								video_out_V_id_V_tmp_mem = (aesl_tmp_3[i_0].id).to_string(2).c_str();
								video_out_V_id_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = video_out_V_id_V_tmp_mem.range(0, 0);
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
			sprintf(tvout_video_out_V_id_V, "%s\n", (video_out_V_id_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_video_out_V_id_V, tvout_video_out_V_id_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.video_out_V_id_V_depth);
		sprintf(tvout_video_out_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_id_V, tvout_video_out_V_id_V);

		// release memory allocation
		delete [] video_out_V_id_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_video_out_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_id_V, wrapc_stream_size_out_video_out_V_id_V);
		sprintf(wrapc_stream_size_out_video_out_V_id_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_id_V, wrapc_stream_size_out_video_out_V_id_V);
		sprintf(wrapc_stream_size_out_video_out_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_id_V, wrapc_stream_size_out_video_out_V_id_V);

		// [[transaction]]
		sprintf(tvout_video_out_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_dest_V, tvout_video_out_V_dest_V);

		sc_bv<1>* video_out_V_dest_V_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: video_out_V_dest_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_out.V.dest.V(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].dest
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].dest
							// regulate_c_name       : video_out_V_dest_V
							// input_type_conversion : (aesl_tmp_3[i_0].dest).to_string(2).c_str()
							if (&(aesl_tmp_3[0].dest) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_out_V_dest_V_tmp_mem;
								video_out_V_dest_V_tmp_mem = (aesl_tmp_3[i_0].dest).to_string(2).c_str();
								video_out_V_dest_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = video_out_V_dest_V_tmp_mem.range(0, 0);
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
			sprintf(tvout_video_out_V_dest_V, "%s\n", (video_out_V_dest_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_video_out_V_dest_V, tvout_video_out_V_dest_V);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.video_out_V_dest_V_depth);
		sprintf(tvout_video_out_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_video_out_V_dest_V, tvout_video_out_V_dest_V);

		// release memory allocation
		delete [] video_out_V_dest_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_video_out_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_dest_V, wrapc_stream_size_out_video_out_V_dest_V);
		sprintf(wrapc_stream_size_out_video_out_V_dest_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_dest_V, wrapc_stream_size_out_video_out_V_dest_V);
		sprintf(wrapc_stream_size_out_video_out_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_video_out_V_dest_V, wrapc_stream_size_out_video_out_V_dest_V);

		// push back output stream: "video_out"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			video_out.write(aesl_tmp_3[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "video_in_V_data_V"
		delete [] tvin_video_in_V_data_V;
		delete [] wrapc_stream_size_in_video_in_V_data_V;
		// release memory allocation: "video_in_V_keep_V"
		delete [] tvin_video_in_V_keep_V;
		delete [] wrapc_stream_size_in_video_in_V_keep_V;
		// release memory allocation: "video_in_V_strb_V"
		delete [] tvin_video_in_V_strb_V;
		delete [] wrapc_stream_size_in_video_in_V_strb_V;
		// release memory allocation: "video_in_V_user_V"
		delete [] tvin_video_in_V_user_V;
		delete [] wrapc_stream_size_in_video_in_V_user_V;
		// release memory allocation: "video_in_V_last_V"
		delete [] tvin_video_in_V_last_V;
		delete [] wrapc_stream_size_in_video_in_V_last_V;
		// release memory allocation: "video_in_V_id_V"
		delete [] tvin_video_in_V_id_V;
		delete [] wrapc_stream_size_in_video_in_V_id_V;
		// release memory allocation: "video_in_V_dest_V"
		delete [] tvin_video_in_V_dest_V;
		delete [] wrapc_stream_size_in_video_in_V_dest_V;
		// release memory allocation: "video_out_V_data_V"
		delete [] tvout_video_out_V_data_V;
		delete [] tvin_video_out_V_data_V;
		delete [] wrapc_stream_size_out_video_out_V_data_V;
		// release memory allocation: "video_out_V_keep_V"
		delete [] tvout_video_out_V_keep_V;
		delete [] tvin_video_out_V_keep_V;
		delete [] wrapc_stream_size_out_video_out_V_keep_V;
		// release memory allocation: "video_out_V_strb_V"
		delete [] tvout_video_out_V_strb_V;
		delete [] tvin_video_out_V_strb_V;
		delete [] wrapc_stream_size_out_video_out_V_strb_V;
		// release memory allocation: "video_out_V_user_V"
		delete [] tvout_video_out_V_user_V;
		delete [] tvin_video_out_V_user_V;
		delete [] wrapc_stream_size_out_video_out_V_user_V;
		// release memory allocation: "video_out_V_last_V"
		delete [] tvout_video_out_V_last_V;
		delete [] tvin_video_out_V_last_V;
		delete [] wrapc_stream_size_out_video_out_V_last_V;
		// release memory allocation: "video_out_V_id_V"
		delete [] tvout_video_out_V_id_V;
		delete [] tvin_video_out_V_id_V;
		delete [] wrapc_stream_size_out_video_out_V_id_V;
		// release memory allocation: "video_out_V_dest_V"
		delete [] tvout_video_out_V_dest_V;
		delete [] tvin_video_out_V_dest_V;
		delete [] wrapc_stream_size_out_video_out_V_dest_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

