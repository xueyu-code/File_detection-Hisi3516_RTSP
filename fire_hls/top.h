#ifndef _TOP_H_
#define _TOP_H_

#include "hls_video.h"


// maximum image size
#define MAX_WIDTH  1920
#define MAX_HEIGHT 1080

typedef unsigned char uchar;

// I/O Image Settings
#define INPUT_IMAGE           "fire_1.png"
#define OUTPUT_IMAGE          "result_1080p.png"
#define OUTPUT_IMAGE_GOLDEN   "test_img1.png"

// typedef video library core structures
typedef hls::stream<ap_axiu<24,1,1,1> >               AXI_STREAM;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3>     RGB_IMAGE;
typedef hls::Scalar<3, unsigned char>                 RGB_PIXEL;


void hls_fire_dection(RGB_IMAGE& src, RGB_IMAGE& dst,int rows, int cols,int r_low,int r_up,int g_low,int g_up,int b_low,int b_up);


void fire(AXI_STREAM& input, AXI_STREAM& output,int rows, int cols,int r_low,int r_up,int g_low,int g_up,int b_low,int b_up);



#endif
