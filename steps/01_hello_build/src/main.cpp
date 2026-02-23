#include <iostream>
#include <vector>

int main() {
    std::vector<int> v{1, 2, 3};

    std::cout << "Build ";

    for (int x : v) {
        std::cout << x << " ";
    }

    std::cout << "\nHello C++\n";

    return 0;
}
