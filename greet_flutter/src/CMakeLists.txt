# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(greet_flutter_library VERSION 0.0.1 LANGUAGES C)

add_library(greet_flutter SHARED
  "greet_flutter.c"
)

set_target_properties(greet_flutter PROPERTIES
  PUBLIC_HEADER greet_flutter.h
  OUTPUT_NAME "greet_flutter"
)

target_compile_definitions(greet_flutter PUBLIC DART_SHARED_LIB)
