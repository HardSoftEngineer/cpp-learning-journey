#include <iostream>
#include <fstream>
#include <CLI/CLI.hpp>

int main(int argc, char* argv[]) {
    // Init value
    std::string confs_path = "confs/dev.json";
    std::string location = "";
    std::string mode = "";
    int intvalue = 0;
    float floatvalue = 0.0f;
    bool boolvalue = false;

    // 
    std::cout << "Raw argv:\n";
    for (int i = 0; i < argc; ++i) {
        std::cout << "argv[" << i << "] = " << argv[i] << '\n';
    }
    
    // Init cli11
    CLI::App app{"App cli"};
    app.add_option("-c,--confs", confs_path, "Path to confs file");
    app.add_option("-l,--location", location, "App location path");
    app.add_option("-m,--mode", mode, "App start mode");
    app.add_option("-i,--intvalue", intvalue, "App int value");
    app.add_option("-f,--floatvalue", floatvalue, "App float value");
    app.add_option("-b,--boolvalue", boolvalue, "App bool value");

    // 
    CLI11_PARSE(app, argc, argv);
    
    // 
    std::cout << "\nParsed options:\n";
    for (const auto& option : app.get_options()) {
        std::cout << "Option: " << option->get_name() << '\n';
        for (const auto& val : option->results()) {
            std::cout << "  Value: " << val << '\n';
        }
    }

    // 
    std::cout << "\nValue from app:\n";
    std::cout << "Confs path: " << confs_path << '\n';
    std::cout << "Int value: " << intvalue << '\n';
    std::cout << "Float value: " << floatvalue << '\n';
    std::cout << "Bool value: " << std::boolalpha << boolvalue << '\n';

}