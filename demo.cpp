#include <iostream>
#include "DbNet.h"
#include "Crnn.h"
#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <stdlib.h>
#include <signal.h>
#include <iostream>
#include <string>
#include <sys/time.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

using namespace cv;
using namespace std;
cv::VideoCapture capture("rtsp://192.168.10.24/live/1");
cv::Mat originFrame;
cv::Mat detectFrame;
bool detecting = false;
bool startDetecting = false;
struct timeval tv;

int main_original(int argc, char **argv)
{

    const char *db_model_path = argv[1];   // 检测模型路径
    const char *crnn_model_path = argv[2]; // 识别模型路径
    const char *key_path = argv[3];        // keys 路径
    const char *img_path = argv[4];        // 测试图片路径

    DBNet dbNet;
    CRNN crnn;

    // 检测模型初始化
    int retDbNet = dbNet.initModel(db_model_path);
    // 识别模型初始化
    int retCrnn = crnn.loadModel_init(crnn_model_path, key_path);

    if (retDbNet < 0 || retCrnn < 0)
    {
        printf("load model fail!");
    }

    Mat image = imread(img_path);
    if (image.empty())
    {
        cout << "Error: Could not load image" << endl;
        return -1;
    }

    // 记录起始时间
    double time0 = static_cast<double>(getTickCount());

    vector<ImgBox> crop_img;
    // 文字检测
    crop_img = dbNet.getTextImages(image);
    if (crop_img.size() > 0)
    {
        cout << "detect result: " << crop_img.size() << " text boxes" << endl;
    }

    // 检测时间
    // 计算运行时间并输出
    time0 = ((double)getTickCount() - time0) / getTickFrequency(); // 结束时间-开始时间，并化为秒单位
    cout << "\t检测运行时间为: " << time0 << "秒" << endl;         // 输出运行时间

    // 记录起始时间
    double time1 = static_cast<double>(getTickCount());
    vector<StringBox> result;
    result = crnn.inference(crop_img); // 识别时间

    // 计算运行时间并输出
    time1 = ((double)getTickCount() - time1) / getTickFrequency(); // 结束时间-开始时间，并化为秒单位
    cout << "\t识别运行时间为: " << time1 << "秒" << endl;         // 输出运行时间
    cout << "\t总运行时间为: " << time0 + time1 << "秒" << endl;

    for (auto &txt : result)
    {
        // 输出识别结果
        cout << txt.txt << "\n"
             << endl;
        drawTextBox(image, txt.txtPoint, 1); // 画框
    }

    cv::imwrite("img.jpg", image);

    return 0;
}

void *get_video_frame_process(void *arg)
{

    // 判断视频是否读取成功，返回true表示成功
    if (!capture.isOpened())
    {
        std::cout << "无法读取视频" << std::endl;
    }

    while (1)
    {
        // 循环读取视频帧
        capture.read(originFrame);
        // originFrame.resize(640, 480);
        // cv::imshow("opencv demo", originFrame);
        cv::waitKey(1);
        if (detecting == false)
        {
            cout << "copy ram" << endl;
            memcpy(&detectFrame, &originFrame, sizeof(cv::Mat));
            gettimeofday(&tv, NULL);
            cout << "get_video_frame_process " << (tv.tv_usec / 1000 + tv.tv_sec * 1000) << endl;

            startDetecting = true;
        }
        // usleep(1000);
    }
    return nullptr;
}

void *detect_process(void *arg)
{
    while (1)
    {
        while (startDetecting == false)
        {
            usleep(1000);
        }
        detecting = true;
        cout << "start detect" << endl;
        sleep(1);

        startDetecting = false;
        detecting = false;
    }
    return nullptr;
}

int main(int argc, char **argv)
{
    const char *db_model_path = argv[1];   // 检测模型路径
    const char *crnn_model_path = argv[2]; // 识别模型路径
    const char *key_path = argv[3];        // keys 路径
    const char *img_path = argv[4];        // 测试图片路径
    int res;
    pthread_t getVideoFrameThread, detectThread;

    res = pthread_create(&detectThread, NULL, detect_process, NULL);
    if (res != 0)
    {
        printf("producer thread create failed");
        return 0;
    }

    res = pthread_create(&getVideoFrameThread, NULL, get_video_frame_process, NULL);
    if (res != 0)
    {
        printf("consume thread create failed");
        return 0;
    }

    // 循环读取视频帧
    // while (true)
    // {
    //     cout << "running" << endl;
    //     sleep(1);
    // }

    getchar();

    // 释放VideoCapture对象
    capture.release();

    return 0;
}
