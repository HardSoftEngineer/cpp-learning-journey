#include <spdlog/spdlog.h>
#include <spdlog/sinks/stdout_color_sinks.h>
#include <spdlog/sinks/basic_file_sink.h>

int log_default() {
    auto console = spdlog::stdout_color_mt("console_v1");

    console->set_level(spdlog::level::debug);

    console->debug("This is test Debug message");
    console->info("This is test Info message");
    console->warn("This is test Warning message");
    console->error("This is test Error message");
    console->critical("This is test Critical message");

    return 0;
}

int log_console_and_file(std::string log_level="info") {
    auto console = spdlog::stdout_color_mt("console_v2");
    auto file_logger = spdlog::basic_logger_mt("file_logger_v2", "logs/app.log");
    spdlog::set_default_logger(console);

    // Set log_level
    if (log_level == "debug") spdlog::set_level(spdlog::level::debug);
    else if (log_level == "info") spdlog::set_level(spdlog::level::info);
    else if (log_level == "warn") spdlog::set_level(spdlog::level::warn);
    else if (log_level == "error") spdlog::set_level(spdlog::level::err);
    else spdlog::set_level(spdlog::level::info);

    spdlog::debug("This is test Debug message");
    spdlog::info("This is test Info message");
    spdlog::warn("This is test Warning message");
    spdlog::error("This is test Error message");
    spdlog::critical("This is test Critical message");

    // Write to file
    file_logger->debug("This is test Debug message");
    file_logger->info("This is test Info message");
    file_logger->warn("This is test Warning message");
    file_logger->error("This is test Error message");
    file_logger->critical("This is test Critical message");

    return 0;
}

int main(int argc, char* argv[]) {
    log_default();
    log_console_and_file();
}
