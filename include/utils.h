#ifndef UTILS_H 
#define UTILS_H

#include <string>
#include <vector>
#include <iostream>
#include <cstring>
#include <time.h>
#include "sys/time.h"


class Utils{
    public:
        Utils();
        static std::vector<std::string> split(const std::string& str, const std::string& delim);
        static long time_in_ms(); // 返回当前时间
    public:
        static const int feature_len = 255;
};
#endif