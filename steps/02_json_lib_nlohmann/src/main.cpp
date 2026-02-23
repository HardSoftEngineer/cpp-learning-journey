#include <iostream>
#include <nlohmann/json.hpp>

int main() {
    nlohmann::json j = {
        {"name", "example"},
        {"value", 42}
    };

    std::cout << j.dump(4) << std::endl;
}
