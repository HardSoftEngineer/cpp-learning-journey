# Example steps 

```
git clone https://github.com/HardSoftEngineer/cpp-learning-journey.git --branch "02_confs/json"
```

```
cd cpp-learning-journey/02_confs/json
```

---

```
json$ ./scripts/01_libs_init_manager.sh 
```
```
VCPKG_VERSION_TAG: 2026.01.16
Manager vcpkg cloning into libs/ ...
Cloning into 'json/scripts/../libs/vcpkg'...
remote: Enumerating objects: 16333, done.
remote: Counting objects: 100% (16333/16333), done.
remote: Compressing objects: 100% (13996/13996), done.
remote: Total 16333 (delta 3441), reused 11848 (delta 2294), pack-reused 0 (from 0)
Receiving objects: 100% (16333/16333), 6.67 MiB | 2.29 MiB/s, done.
Resolving deltas: 100% (3441/3441), done.
Note: switching to '66c0373dc7fca549e5803087b9487edfe3aca0a1'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

Downloading vcpkg-glibc...
vcpkg package management program version 2025-12-16-44bb3ce006467fc13ba37ca099f64077b8bbf84d

See LICENSE.txt for license information.
Telemetry
---------
vcpkg collects usage data in order to help us improve your experience.
The data collected by Microsoft is anonymous.
You can opt-out of telemetry by re-running the bootstrap-vcpkg script with -disableMetrics,
passing --disable-metrics to vcpkg on the command line,
or by setting the VCPKG_DISABLE_METRICS environment variable.

Read more about vcpkg telemetry at docs/about/privacy.md
Done.
```

---

```
json$ ./scripts/02_libs_install.sh 
```
```
Start...
VCPKG_CONFS: json/scripts/../vcpkg.json
{
  "name": "confs-json-app",
  "version": "1.0.0",
  "dependencies": [
    "nlohmann-json"
  ]
}VCPKG_DIR: json/scripts/../libs/vcpkg
Installing dependencies...
A suitable version of cmake was not found (required v3.31.10).
Downloading https://github.com/Kitware/CMake/releases/download/v3.31.10/cmake-3.31.10-linux-x86_64.tar.gz -> cmake-3.31.10-linux-x86_64.tar.gz
Successfully downloaded cmake-3.31.10-linux-x86_64.tar.gz
Extracting cmake...
Detecting compiler hash for triplet x64-linux...
Compiler found: /usr/bin/c++
The following packages will be built and installed:
    nlohmann-json:x64-linux@3.12.0#2
  * vcpkg-cmake:x64-linux@2024-04-23
  * vcpkg-cmake-config:x64-linux@2024-05-23
Additional packages (*) will be modified to complete this operation.
Restored 3 package(s) from /home/user/.cache/vcpkg/archives in 15.2 ms. Use --debug to see more details.
Installing 1/3 vcpkg-cmake-config:x64-linux@2024-05-23...
Elapsed time to handle vcpkg-cmake-config:x64-linux: 1.07 ms
vcpkg-cmake-config:x64-linux package ABI: 9097b9feaf5a6e2951c96806758bbfa9cd9516d8fa9f6a15a37f20701a30ca29
Installing 2/3 vcpkg-cmake:x64-linux@2024-04-23...
Elapsed time to handle vcpkg-cmake:x64-linux: 964 us
vcpkg-cmake:x64-linux package ABI: 14fa555736fabc3375d448d45f54de5493de6b06492e440fbde685e24acb3732
Installing 3/3 nlohmann-json:x64-linux@3.12.0#2...
Elapsed time to handle nlohmann-json:x64-linux: 3.22 ms
nlohmann-json:x64-linux package ABI: 709dd30b821eede3f60238e310c6d14f83d7f6e6dbc915591eb2ac5cfd047b12
Installed contents are licensed to you by owners. Microsoft is not responsible for, nor does it grant any licenses to, third-party packages.
Packages installed in this vcpkg installation declare the following licenses:
MIT
The package nlohmann-json provides CMake targets:

    find_package(nlohmann_json CONFIG REQUIRED)
    target_link_libraries(main PRIVATE nlohmann_json::nlohmann_json)

The package nlohmann-json can be configured to not provide implicit conversions via a custom triplet file:

    set(nlohmann-json_IMPLICIT_CONVERSIONS OFF)

For more information, see the docs here:
    
    https://json.nlohmann.me/api/macros/json_use_implicit_conversions/

All requested installations completed successfully in: 5.8 ms
Done.
```

---

```
json$ ./scripts/03_build.sh 
```
```
Start...
rm -rf json/scripts/../build
-- Running vcpkg install
Detecting compiler hash for triplet x64-linux...
Compiler found: /usr/bin/c++
The following packages are already installed:
    nlohmann-json:x64-linux@3.12.0#2
  * vcpkg-cmake:x64-linux@2024-04-23
  * vcpkg-cmake-config:x64-linux@2024-05-23
The package nlohmann-json provides CMake targets:

    find_package(nlohmann_json CONFIG REQUIRED)
    target_link_libraries(main PRIVATE nlohmann_json::nlohmann_json)

The package nlohmann-json can be configured to not provide implicit conversions via a custom triplet file:

    set(nlohmann-json_IMPLICIT_CONVERSIONS OFF)

For more information, see the docs here:
    
    https://json.nlohmann.me/api/macros/json_use_implicit_conversions/

All requested installations completed successfully in: 112 us
-- Running vcpkg install - done
-- The CXX compiler identification is GNU 13.3.0
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Found nlohmann_json: json/libs/vcpkg_installed/x64-linux/share/nlohmann_json/nlohmann_jsonConfig.cmake (found version "3.12.0") 
-- Configuring done (2.1s)
-- Generating done (0.0s)
-- Build files have been written to: json/build
[ 50%] Building CXX object CMakeFiles/confs_json_app.dir/src/main.cpp.o
[100%] Linking CXX executable confs_json_app
[100%] Built target confs_json_app
```

---

```
json$ ./scripts/04_libs_version.sh 
```
```
Git vcpkg tag:
Commit:
768b2cd5c237b7c0b4f986062e91e41eaa593d54
```

---

```
json$ ./scripts/05_run.sh 
```
```
{
    "name": "example",
    "value": 42
}
```
