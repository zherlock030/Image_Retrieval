#include "/home/zherlock/c++ example/image retrieval/include/retrievaler.h"
#include "utils.h"
using namespace std;

Retrievaler::Retrievaler(string FeaturePath)
{
    objID_DB.resize(50);
    vector<int> temp(50);
    objID_DB = temp;
    vector<float> temp1(256);
    cur_feature = temp1;
    vector<vector<float>> temp2(50, vector<float>(256));
    feature_DB = temp2;

    ifstream f;
    string str;
    f.open(FeaturePath);
    int cnt = 0;
    while (std::getline(f, str))
    {
        vector<string> mp = Utils::split(str, ":");
        objID_DB[cnt] = atoi(mp[0].c_str());
        str = mp[1];
        mp = Utils::split(str, ",");
        cout << "mp len is " << mp.size() << endl;
        for (int i = 0; i < mp.size(); i++)
        {
            feature_DB[cnt][i] = atof(mp[i].c_str());
        }
        cnt += 1;
    }
    f.close();
}



int Retrievaler::feature_match(vector<float> &fea, vector<vector<float>> &feature_DB, vector<int> &objID_DB){
  int id = -1;
  float cos_sim = 0.0;
  float thre = 0.8;
  for(int i=0; i < feature_DB.size(); i ++){
    if(cos_score(fea, feature_DB[i]) > cos_sim ){
      id = objID_DB[i];
      cos_sim = cos_score(fea, feature_DB[i]);
      //cout << "cur id is " << id << " curr cos_sim is " << cos_sim << endl;
    }
  }
  if(cos_sim >= thre){
    return id;
  }
  else{
    return -1;
  }
}


float Retrievaler::cos_score(vector<float> &a, vector<float> &b){
  float vm = 0.0;//vector multiply
  float na = 0.0;//norm of vector A
  float nb = 0.0;//norm of vector B
  for(int i = 0; i < a.size(); i++){
    vm += a[i]*b[i];
    na += a[i]*a[i];
    nb += b[i]*b[i];
  }
  return vm / (sqrt(na) * sqrt(nb));
}

