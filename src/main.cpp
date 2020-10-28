#include "yolo.h"
#include "retrievaler.h"

using namespace std;
using namespace cv;

int main(){
    string model_path = "/home/zherlock/c++ example/object detection/files/yolov5s.torchscript";
    YOLO detector = YOLO(model_path);
    string img_path = "/home/zherlock/c++ example/object detection/files/test.png";
    Mat img = imread(img_path);
    //detector.inference(img_path);
    Detection *det = detector.inference(img);
    //cout << "get size is " << det->class_IDs.size() << endl;
    for(int i = 0; i < det->class_IDs.size(); i++){
    cout << "get id is " << det->class_IDs[i] << endl;
    }

    string feature_path = "/home/zherlock/c++ example/image retrieval/files/subfeatures_aver.txt";
    Retrievaler retrievaler = Retrievaler(feature_path);
    for(int i = 0; i < det->class_IDs.size(); i++){
        det->obj_IDs[i] = retrievaler.feature_match(det->features[i], retrievaler.feature_DB, retrievaler.objID_DB);
    cout << "match id is " << det->obj_IDs[i] << endl;
    }
    
    
    
}