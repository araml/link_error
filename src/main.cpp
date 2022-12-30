#include <cstdio>
#include <fstream>
#include <json/json.h>

int main() { 
    std::ifstream j1_json("j1");
    
    Json::Value j1;
    Json::Reader parser;

    if (!parser.parse(j1_json, j1)) { 
        puts("Error when parsing j1");
    }

    return 0;
}
