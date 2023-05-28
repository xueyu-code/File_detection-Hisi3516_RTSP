#include "top.h"
#include "hls_opencv.h"
#include "iostream"
#include <time.h>
#include <stdio.h>
#include "cmath"
using namespace std;
using namespace cv;

int main (int argc, char** argv)
{

	IplImage* src = cvLoadImage("fire_1.png");
//	IplImage* src = cvLoadImage("fire_2.png");
//	IplImage* src = cvLoadImage("fire_3.png");
//  IplImage* src = cvLoadImage("fire_4.png");
//	IplImage* src = cvLoadImage("fire_5.png");
//	IplImage* src = cvLoadImage("fire_6.png");

//    IplImage* src = cvLoadImage("test.png");

    IplImage* dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);

    AXI_STREAM  src_axi, dst_axi,img0,img1;
    IplImage2AXIvideo(src, src_axi);
    fire(src_axi, dst_axi,src->height, src->width,200,249,59,199,59,190);
    AXIvideo2IplImage(dst_axi, dst);

    cvShowImage("src",src);
    cvShowImage("dst_hls",dst);
    waitKey(0);//参数<=0时等待按键事件发生，按下键的话返回按键的值， 否则返回-1；

    return 0;
}
