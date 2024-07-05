# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(maplibre_library VERSION 0.0.1 LANGUAGES C)

add_library(maplibre SHARED
  "maplibre.c"
)

set_target_properties(maplibre PROPERTIES
  PUBLIC_HEADER maplibre.h
  OUTPUT_NAME "maplibre"
)

target_compile_definitions(maplibre PUBLIC DART_SHARED_LIB)
