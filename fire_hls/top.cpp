#include "top.h"
#include <string.h>
#include <hls_math.h>
void hls_fire_dection(RGB_IMAGE& src, RGB_IMAGE& dst,int rows,int cols,int r_low,int r_up,int g_low,int g_up,int b_low,int b_up)
{


	LOOp_ROWS:for(int row = 0; row < rows ; row++) //LOOp_ROWS:
	    {
		 LOOp_COLS:for(int col = 0; col < cols; col++) //LOOp_COLS:
	        {
	        #pragma HLS pipeline II=1 off

	            RGB_PIXEL src_data;
	            RGB_PIXEL pix;
	            RGB_PIXEL dst_data;
	            bool yuv_flag,rgb_flag_1,rgb_flag_2;

	            if(row < rows && col < cols) {
	                src >> src_data;
	            }


	               uchar G = src_data.val[0]; //B
	               uchar B = src_data.val[1]; //G
	               uchar R = src_data.val[2];

	               uchar y  = (76 * R + 150 * G + 29 * B) >> 8;
	               uchar cb = ((128*B -43*R - 85*G)>>8) + 128;
	               uchar cr = ((128*R -107*G - 21 * B)>>8)+ 128;


	             if((R>=r_low) && (R<=r_up) && (G>=g_low) && (G<=g_up) && (B>=b_low) && (B<=b_up))
	            	 rgb_flag_1=1;
	             else
	            	 rgb_flag_1=0;

	             if(y>cb && cr>cb)
	            	 yuv_flag=1;
	             else
	            	 yuv_flag=0;

	             if(R>G && R>B && G>B )
	            	 rgb_flag_2=1;
	             else
	            	 rgb_flag_2=0;

	            uchar temp1= (  (rgb_flag_1==1) || yuv_flag==1)? (uchar)0: B; //B
	            uchar temp0= (  (rgb_flag_1==1) || yuv_flag==1)?(uchar)255:G; //G
	            uchar temp2= (  (rgb_flag_1==1) || yuv_flag==1)? (uchar)0: R;

	            dst_data.val[0] = temp0; //temp0
	            dst_data.val[1] = temp1; //temp1
	            dst_data.val[2] = temp2;

	            dst << dst_data;
	        }
	    }
}



void fire(AXI_STREAM& input, AXI_STREAM& output,int rows,int cols,int r_low,int r_up,int g_low,int g_up,int b_low,int b_up)

{
#pragma HLS INTERFACE axis port=input
#pragma HLS INTERFACE axis port=output
#pragma HLS INTERFACE s_axilite port=rows
#pragma HLS INTERFACE s_axilite port=cols

#pragma HLS INTERFACE s_axilite port=r_low
#pragma HLS INTERFACE s_axilite port=r_up
#pragma HLS INTERFACE s_axilite port=g_low
#pragma HLS INTERFACE s_axilite port=g_up
#pragma HLS INTERFACE s_axilite port=b_low
#pragma HLS INTERFACE s_axilite port=b_up

#pragma HLS INTERFACE ap_ctrl_none port=return

    RGB_IMAGE img_0(rows, cols);
    RGB_IMAGE img_1(rows, cols);



    #pragma HLS dataflow
    hls::AXIvideo2Mat(input,img_0);
    hls_fire_dection(img_0,img_1,rows,cols,r_low,r_up,g_low,g_up,b_low,b_up);

    hls::Mat2AXIvideo(img_1, output);
}


