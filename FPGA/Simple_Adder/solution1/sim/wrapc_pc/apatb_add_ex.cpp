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

using namespace std;
using namespace sc_core;
using namespace sc_dt;
// [define_apint] ---------->



   #define AUTOTB_TVIN_in_a  "../tv/cdatafile/c.add_ex.autotvin_in_a.dat"
   #define AUTOTB_TVIN_in_b  "../tv/cdatafile/c.add_ex.autotvin_in_b.dat"
   #define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.add_ex.autotvout_ap_return.dat"
   #define INTER_TCL  "../tv/cdatafile/ref.tcl"

   #define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.add_ex.autotvout_ap_return.dat"

class AESL_TRANSACTION {
    public:
        AESL_TRANSACTION(const char* name) {
            mName = (char *)malloc((strlen(name)+1)*sizeof(char));            strcpy(mName,name);
        }
        ~AESL_TRANSACTION() {
            free(mName);        }
    public:
        FILE* mFile;
        char* mName;
};

class INTER_TCL_FILE {
    public:
//functions
        INTER_TCL_FILE(const char* name) {
            mName = name;
            in_a_depth = 0;
            in_b_depth = 0;
            ap_return_depth = 0;
            trans_num =0;
        }
        ~INTER_TCL_FILE() {
            mFile.open(mName);
            if (!mFile.good() ) {
                cout<<"Failed to open file ref.tcl."<<endl;
                exit (1);
            }
            string total_list = get_depth_list();
            mFile<<"set depth_list {\n";
            mFile<<total_list; 
            mFile<<"}\n";
            mFile<<"set trans_num "<<trans_num<<endl;
            mFile.close();
        }
        string get_depth_list () {
            stringstream total_list;
            total_list<<"   {in_a "<< in_a_depth << "}\n";
            total_list<<"   {in_b "<< in_b_depth << "}\n";
            total_list<<"   {ap_return "<< ap_return_depth << "}\n";
            return total_list.str();
        }
        void set_num (int num , int* class_num) {
            (*class_num) = (*class_num) > num ? (*class_num) : num;
        }
    public:
//variables
        int in_a_depth;
        int in_b_depth;
        int ap_return_depth;
        int trans_num;
    private:
        ofstream mFile;
        const char* mName;
};

class AESL_TRANSACTION_PC {
    public:
        AESL_TRANSACTION_PC(const char* name) {
            mName = (char *)malloc((strlen(name)+1)*sizeof(char));            strcpy(mName,name);
        }
        ~AESL_TRANSACTION_PC() {
            free(mName);        }
    public:
        fstream file_token;
        char * mName;
};

extern "C" int add_ex (
int in_a,
int in_b);
extern "C" int AESL_WRAP_add_ex (
int in_a,
int in_b) {

    fstream wrapc_switch_file_token;

    wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");

    fstream wrapc_tv_switch_file_token;

    wrapc_tv_switch_file_token.open(".hls_cosim_wrapc_tv_switch.log");

    int AESL_i;

    if (wrapc_switch_file_token.good()) {

        static unsigned AESL_transaction_pc;

        string AESL_token;

        string AESL_num;

            FILE * communication_file;

            char get_com_str_set[4];

            char get_com_str[19];

            int get_com_int;

            do {

                do {

                    communication_file = fopen("com_wrapc_pc.tcl","r");

                } while (communication_file == NULL);

                fscanf(communication_file, "%s %s %d", get_com_str_set, get_com_str, &get_com_int);

                fclose(communication_file);

            } while (strcmp(get_com_str, "trans_num_wrapc_pc") != 0 || get_com_int < AESL_transaction_pc);

        static AESL_FILE_HANDLER aesl_fh;

        char str[100];

        char transaction_num_char[40];

        sprintf(transaction_num_char, "_%0d", AESL_transaction_pc);

        strcpy(str,AUTOTB_TVOUT_PC_ap_return);

        strcat(str,transaction_num_char);

        AESL_TRANSACTION_PC tvout_pc_ap_return(str);

        int AESL_return;

        tvout_pc_ap_return.file_token.open(tvout_pc_ap_return.mName);

        if (!tvout_pc_ap_return.file_token.good()) {

            cout<<"Failed to open tv file ."<<tvout_pc_ap_return.mName<<endl;

            exit (1);

        }

        tvout_pc_ap_return.file_token >> AESL_token;//[[transaction]]

        if ( AESL_token != "[[transaction]]") {

           cout<<"Illegal file tvout_ap_return format !"<<endl;

           exit(1);

        }

        tvout_pc_ap_return.file_token >> AESL_num;//transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            tvout_pc_ap_return.file_token >> AESL_token;//data

            sc_bv<32> ap_return_pc_buffer;

            int i = 0;

            while (AESL_token != "[[/transaction]]") {

                bool no_x = false;

                bool err = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('X');

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                no_x = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('x', 2);

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                if (AESL_token != "") {

                    ap_return_pc_buffer = AESL_token.c_str();

                    i++;

                }

                tvout_pc_ap_return.file_token >> AESL_token;//data or [[/transaction]]

                if (AESL_token == "[[[/runtime]]]" || tvout_pc_ap_return.file_token.eof()) {

                   cout<<"Illegal file tvout_ap_return format !"<<endl;

                   exit(1);

                }

            }

            tvout_pc_ap_return.file_token.close();

            strcpy(str,AUTOTB_TVOUT_PC_ap_return);

            strcat(str,transaction_num_char);

            remove(str);

            if (i > 0) {

                sc_lv<32> return_lv0_0_1_0;

                AESL_i = 0;

                if(&(AESL_return) != NULL)

                {

                return_lv0_0_1_0.range(31, 0) = sc_bv<32>(ap_return_pc_buffer.range(31, 0));

                }

                AESL_i++;

                {//bitslice

                {//celement

                AESL_i = 0; //subscript for rtl array

                if(&(AESL_return) != 0) {

                   AESL_return = (return_lv0_0_1_0).to_uint64();

                }

                AESL_i++;

                }//celement

                }//bitslice

                }

        }

        AESL_transaction_pc ++ ;

        return AESL_return;

    } else if (wrapc_tv_switch_file_token.good()){

        static unsigned AESL_transaction;

        char transaction_num_char[40];

        sprintf(transaction_num_char, "_%0d", AESL_transaction);

        char file_name_char[100];

        strcpy(file_name_char, AUTOTB_TVIN_in_a);

        strcat(file_name_char, transaction_num_char);

        AESL_TRANSACTION tvin_in_a(file_name_char);

        strcpy(file_name_char, AUTOTB_TVIN_in_b);

        strcat(file_name_char, transaction_num_char);

        AESL_TRANSACTION tvin_in_b(file_name_char);

        strcpy(file_name_char, AUTOTB_TVOUT_ap_return);

        strcat(file_name_char, transaction_num_char);

        AESL_TRANSACTION tvout_ap_return(file_name_char);

        int leading_zero;

        tvin_in_a.mFile = fopen(tvin_in_a.mName, "w");

        if (tvin_in_a.mFile == NULL) {

            cout<<"Failed to open tv file ."<<tvin_in_a.mName<<endl;

            exit (1);

        }

        fprintf(tvin_in_a.mFile, "[[transaction]] %d\n", AESL_transaction);

        sc_bv<32> in_a_tvin_wrapc_buffer;

        {//bitslice

        {//celement

        AESL_i = 0; //subscript for rtl array

        sc_lv<32> in_a_tmp_mem; 

        if(&(in_a) != 0) {

        in_a_tmp_mem = in_a;

           in_a_tvin_wrapc_buffer.range(31, 0) = in_a_tmp_mem.range(31, 0 ) ;

        }

        AESL_i++;

        }//celement

        }//bitslice

        for (int i = 0; i < 1 ; i++) {

            fprintf(tvin_in_a.mFile, "%s\n", (in_a_tvin_wrapc_buffer).to_string(SC_HEX).c_str());

        }

        fprintf(tvin_in_a.mFile, "[[/transaction]] \n");

        fclose(tvin_in_a.mFile);

        tvin_in_b.mFile = fopen(tvin_in_b.mName, "w");

        if (tvin_in_b.mFile == NULL) {

            cout<<"Failed to open tv file ."<<tvin_in_b.mName<<endl;

            exit (1);

        }

        fprintf(tvin_in_b.mFile, "[[transaction]] %d\n", AESL_transaction);

        sc_bv<32> in_b_tvin_wrapc_buffer;

        {//bitslice

        {//celement

        AESL_i = 0; //subscript for rtl array

        sc_lv<32> in_b_tmp_mem; 

        if(&(in_b) != 0) {

        in_b_tmp_mem = in_b;

           in_b_tvin_wrapc_buffer.range(31, 0) = in_b_tmp_mem.range(31, 0 ) ;

        }

        AESL_i++;

        }//celement

        }//bitslice

        for (int i = 0; i < 1 ; i++) {

            fprintf(tvin_in_b.mFile, "%s\n", (in_b_tvin_wrapc_buffer).to_string(SC_HEX).c_str());

        }

        fprintf(tvin_in_b.mFile, "[[/transaction]] \n");

        fclose(tvin_in_b.mFile);

        int AESL_return = add_ex(in_a,in_b);

        tvout_ap_return.mFile = fopen(tvout_ap_return.mName, "w");

        if (tvout_ap_return.mFile == NULL) {

            cout<<"Failed to open tv file ."<<tvout_ap_return.mName<<endl;

            exit (1);

        }

        fprintf(tvout_ap_return.mFile, "[[transaction]] %d\n", AESL_transaction);

        sc_bv<32> ap_return_tvout_wrapc_buffer;

        {//bitslice

        {//celement

        AESL_i = 0; //subscript for rtl array

        sc_lv<32> return_tmp_mem; 

        if(&(AESL_return) != 0) {

        return_tmp_mem = AESL_return;

           ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0 ) ;

        }

        AESL_i++;

        }//celement

        }//bitslice

        for (int i = 0; i < 1 ; i++) {

            fprintf(tvout_ap_return.mFile, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());

        }

        fprintf(tvout_ap_return.mFile, "[[/transaction]] \n");

        fclose(tvout_ap_return.mFile);
        FILE* communication_file;
        do {
            communication_file = fopen("com_wrapc.tcl", "w");
        } while (communication_file == NULL);
        fprintf(communication_file, "set trans_num_wrapc %d \n\n", AESL_transaction);
        fclose(communication_file);
    if(AESL_transaction > 0) {
        FILE * communication_file;
        char get_com_str_set[4];
        char get_com_str[14];
        int get_com_int;
        do {
            do {
                communication_file = fopen("com_rtl_ready.tcl","r");
            } while (communication_file == NULL);
            fscanf(communication_file, "%s %s %d", get_com_str_set, get_com_str, &get_com_int);
            fclose(communication_file);
        } while (strcmp(get_com_str, "trans_num_rtl") != 0 || get_com_int < AESL_transaction);
    }

        if(AESL_transaction > 0) {

        sprintf(transaction_num_char, "_%0d", AESL_transaction - 1);

        strcpy(file_name_char, AUTOTB_TVIN_in_a);

        strcat(file_name_char, transaction_num_char);

        remove(file_name_char);

        strcpy(file_name_char, AUTOTB_TVIN_in_b);

        strcat(file_name_char, transaction_num_char);

        remove(file_name_char);

        strcpy(file_name_char, AUTOTB_TVOUT_ap_return);

        strcat(file_name_char, transaction_num_char);

        remove(file_name_char);
}

        AESL_transaction++;

        return AESL_return;

    } else {

        static unsigned AESL_transaction;

        static AESL_FILE_HANDLER aesl_fh;

        static INTER_TCL_FILE tcl_file(INTER_TCL);


        int leading_zero;

        sc_bv<32> in_a_tvin_wrapc_buffer;

        {//bitslice

        {//celement

        AESL_i = 0; //subscript for rtl array

        sc_lv<32> in_a_tmp_mem; 

        if(&(in_a) != 0) {

        in_a_tmp_mem = in_a;

           in_a_tvin_wrapc_buffer.range(31, 0) = in_a_tmp_mem.range(31, 0 ) ;

        }

        AESL_i++;

        }//celement

        }//bitslice

        tcl_file.set_num(1,&tcl_file.in_a_depth);

        sc_bv<32> in_b_tvin_wrapc_buffer;

        {//bitslice

        {//celement

        AESL_i = 0; //subscript for rtl array

        sc_lv<32> in_b_tmp_mem; 

        if(&(in_b) != 0) {

        in_b_tmp_mem = in_b;

           in_b_tvin_wrapc_buffer.range(31, 0) = in_b_tmp_mem.range(31, 0 ) ;

        }

        AESL_i++;

        }//celement

        }//bitslice

        tcl_file.set_num(1,&tcl_file.in_b_depth);

        int AESL_return = add_ex(in_a,in_b);

        sc_bv<32> ap_return_tvout_wrapc_buffer;

        {//bitslice

        {//celement

        AESL_i = 0; //subscript for rtl array

        sc_lv<32> return_tmp_mem; 

        if(&(AESL_return) != 0) {

        return_tmp_mem = AESL_return;

           ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0 ) ;

        }

        AESL_i++;

        }//celement

        }//bitslice

        tcl_file.set_num(1,&tcl_file.ap_return_depth);

        AESL_transaction++;

        tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

        return AESL_return;

    }
}

