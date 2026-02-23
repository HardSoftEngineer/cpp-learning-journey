# 02_confs/json

This folder contains an example C++ project that demonstrates how to use **JSON** with `nlohmann-json` and manage dependencies using **vcpkg**. It also includes scripts to set up the environment, install libraries, and build the project.

---

## Contents

- `CMakeLists.txt` — CMake project configuration.
- `vcpkg.json` — vcpkg manifest listing required packages.
- `src/main.cpp` — example C++ program that prints a JSON object.
- `scripts/` — helper scripts for initializing, installing libraries, building, and running the project.
- `libs/` — local copy of vcpkg and installed libraries (after running scripts).

---

## How it works

1. **Initialize vcpkg manager**: clones vcpkg into `libs/`.
2. **Install dependencies**: uses `vcpkg.json` to install `nlohmann-json` locally into `libs/vcpkg_installed`.
3. **Build the project**: CMake reads the local toolchain and builds the executable.
4. **Run the example**: prints a JSON object to stdout.

---

## Example steps

Detailed steps are saved in [docs/steps.md](docs/steps.md).

### Quick Example:

```
git clone https://github.com/HardSoftEngineer/cpp-learning-journey.git --branch "02_confs/json"
cd cpp-learning-journey/02_confs/json

# Initialize vcpkg manager
./scripts/01_libs_init_manager.sh 

# Install dependencies
./scripts/02_libs_install.sh 

# Build 
./scripts/03_build.sh 

# Run application
./scripts/05_run.sh 
# Output
{
    "name": "example",
    "value": 42
}
```
