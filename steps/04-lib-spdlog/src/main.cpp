#include <spdlog/spdlog.h>
#include <spdlog/sinks/stdout_color_sinks.h>

int main(int argc, char* argv[]) {
    auto console = spdlog::stdout_color_mt("console");

    console->set_level(spdlog::level::debug);

    console->debug("This is test Debug message");
    console->info("This is test Info message");
    console->warn("This is test Warning message");
    console->error("This is test Error message");
    console->critical("This is test Critical message");

}
