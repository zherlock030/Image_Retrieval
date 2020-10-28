#ifndef RETRIEVALER_H
#define RETRIEVALER_H

#include <string>
#include <vector>
#include <math.h>
#include <fstream>
#include <iostream>
#include <unistd.h>
#include <cstring>


class Retrievaler{
public:
    Retrievaler(std::string FeaturePath);
    int feature_match(std::vector<float> &fea, std::vector<std::vector<float>> &feature_DB, std::vector<int> &objID_DB);
    float cos_score(std::vector<float> &a, std::vector<float> &b);


public:
    std::vector<float> cur_feature;
    std::vector<std::vector<float>> feature_DB;
    std::vector<int> objID_DB;
};



#endif