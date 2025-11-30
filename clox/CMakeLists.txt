cmake_minimum_required(VERSION 3.31)
project(clox)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/build/bin)

add_executable(clox)
target_sources(clox
	PRIVATE
		src/main.c
		src/chunk.c
		src/memory.c
		src/debug.c
		src/value.c
		src/vm.c
		src/compiler.c
		src/scanner.c
		src/object.c
)
