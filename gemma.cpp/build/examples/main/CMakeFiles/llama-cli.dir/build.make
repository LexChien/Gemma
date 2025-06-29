# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lexchien/Documents/LLM/Gemma/gemma.cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build

# Include any dependencies generated for this target.
include examples/main/CMakeFiles/llama-cli.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/main/CMakeFiles/llama-cli.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/main/CMakeFiles/llama-cli.dir/progress.make

# Include the compile flags for this target's objects.
include examples/main/CMakeFiles/llama-cli.dir/flags.make

examples/main/CMakeFiles/llama-cli.dir/codegen:
.PHONY : examples/main/CMakeFiles/llama-cli.dir/codegen

examples/main/CMakeFiles/llama-cli.dir/main.cpp.o: examples/main/CMakeFiles/llama-cli.dir/flags.make
examples/main/CMakeFiles/llama-cli.dir/main.cpp.o: /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/main/main.cpp
examples/main/CMakeFiles/llama-cli.dir/main.cpp.o: examples/main/CMakeFiles/llama-cli.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/main/CMakeFiles/llama-cli.dir/main.cpp.o"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/main && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/main/CMakeFiles/llama-cli.dir/main.cpp.o -MF CMakeFiles/llama-cli.dir/main.cpp.o.d -o CMakeFiles/llama-cli.dir/main.cpp.o -c /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/main/main.cpp

examples/main/CMakeFiles/llama-cli.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/llama-cli.dir/main.cpp.i"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/main && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/main/main.cpp > CMakeFiles/llama-cli.dir/main.cpp.i

examples/main/CMakeFiles/llama-cli.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/llama-cli.dir/main.cpp.s"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/main && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/main/main.cpp -o CMakeFiles/llama-cli.dir/main.cpp.s

# Object files for target llama-cli
llama__cli_OBJECTS = \
"CMakeFiles/llama-cli.dir/main.cpp.o"

# External object files for target llama-cli
llama__cli_EXTERNAL_OBJECTS =

bin/llama-cli: examples/main/CMakeFiles/llama-cli.dir/main.cpp.o
bin/llama-cli: examples/main/CMakeFiles/llama-cli.dir/build.make
bin/llama-cli: common/libcommon.a
bin/llama-cli: bin/libllama.dylib
bin/llama-cli: bin/libggml.dylib
bin/llama-cli: bin/libggml-cpu.dylib
bin/llama-cli: bin/libggml-blas.dylib
bin/llama-cli: bin/libggml-metal.dylib
bin/llama-cli: bin/libggml-base.dylib
bin/llama-cli: /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/libcurl.tbd
bin/llama-cli: examples/main/CMakeFiles/llama-cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/llama-cli"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llama-cli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/main/CMakeFiles/llama-cli.dir/build: bin/llama-cli
.PHONY : examples/main/CMakeFiles/llama-cli.dir/build

examples/main/CMakeFiles/llama-cli.dir/clean:
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/main && $(CMAKE_COMMAND) -P CMakeFiles/llama-cli.dir/cmake_clean.cmake
.PHONY : examples/main/CMakeFiles/llama-cli.dir/clean

examples/main/CMakeFiles/llama-cli.dir/depend:
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lexchien/Documents/LLM/Gemma/gemma.cpp /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/main /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/main /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/main/CMakeFiles/llama-cli.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/main/CMakeFiles/llama-cli.dir/depend

