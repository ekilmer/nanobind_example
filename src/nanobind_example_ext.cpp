#include <nanobind/nanobind.h>
#include <spdlog/spdlog.h>

namespace nb = nanobind;

using namespace nb::literals;

NB_MODULE(nanobind_example_ext, m) {
  m.def(
      "add",
      [](int a, int b) {
        spdlog::info("Adding {} and {}", a, b);
        return a + b;
      },
      "a"_a, "b"_a);
}
