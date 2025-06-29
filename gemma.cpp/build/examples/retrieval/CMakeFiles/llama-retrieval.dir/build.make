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
include examples/retrieval/CMakeFiles/llama-retrieval.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/retrieval/CMakeFiles/llama-retrieval.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/retrieval/CMakeFiles/llama-retrieval.dir/progress.make

# Include the compile flags for this target's objects.
include examples/retrieval/CMakeFiles/llama-retrieval.dir/flags.make

examples/retrieval/CMakeFiles/llama-retrieval.dir/codegen:
.PHONY : examples/retrieval/CMakeFiles/llama-retrieval.dir/codegen

examples/retrieval/CMakeFiles/llama-retrieval.dir/retrieval.cpp.o: examples/retrieval/CMakeFiles/llama-retrieval.dir/flags.make
examples/retrieval/CMakeFiles/llama-retrieval.dir/retrieval.cpp.o: /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/retrieval/retrieval.cpp
examples/retrieval/CMakeFiles/llama-retrieval.dir/retrieval.cpp.o: examples/retrieval/CMakeFiles/llama-retrieval.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/retrieval/CMakeFiles/llama-retrieval.dir/retrieval.cpp.o"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/retrieval && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/retrieval/CMakeFiles/llama-retrieval.dir/retrieval.cpp.o -MF CMakeFiles/llama-retrieval.dir/retrieval.cpp.o.d -o CMakeFiles/llama-retrieval.dir/retrieval.cpp.o -c /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/retrieval/retrieval.cpp

examples/retrieval/CMakeFiles/llama-retrieval.dir/retrieval.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/llama-retrieval.dir/retrieval.cpp.i"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/retrieval && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/retrieval/retrieval.cpp > CMakeFiles/llama-retrieval.dir/retrieval.cpp.i

examples/retrieval/CMakeFiles/llama-retrieval.dir/retrieval.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/llama-retrieval.dir/retrieval.cpp.s"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/retrieval && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/retrieval/retrieval.cpp -o CMakeFiles/llama-retrieval.dir/retrieval.cpp.s

# Object files for target llama-retrieval
llama__retrieval_OBJECTS = \
"CMakeFiles/llama-retrieval.dir/retrieval.cpp.o"

# External object files for target llama-retrieval
llama__retrieval_EXTERNAL_OBJECTS =

bin/llama-retrieval: examples/retrieval/CMakeFiles/llama-retrieval.dir/retrieval.cpp.o
bin/llama-retrieval: examples/retrieval/CMakeFiles/llama-retrieval.dir/build.make
bin/llama-retrieval: common/libcommon.a
bin/llama-retrieval: bin/libllama.dylib
bin/llama-retrieval: bin/libggml.dylib
bin/llama-retrieval: bin/libggml-cpu.dylib
bin/llama-retrieval: bin/libggml-blas.dylib
bin/llama-retrieval: bin/libggml-metal.dylib
bin/llama-retrieval: bin/libggml-base.dylib
bin/llama-retrieval: /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/libcurl.tbd
bin/llama-retrieval: examples/retrieval/CMakeFiles/llama-retrieval.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/llama-retrieval"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/retrieval && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llama-retrieval.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/retrieval/CMakeFiles/llama-retrieval.dir/build: bin/llama-retrieval
.PHONY : examples/retrieval/CMakeFiles/llama-retrieval.dir/build

examples/retrieval/CMakeFiles/llama-retrieval.dir/clean:
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/retrieval && $(CMAKE_COMMAND) -P CMakeFiles/llama-retrieval.dir/cmake_clean.cmake
.PHONY : examples/retrieval/CMakeFiles/llama-retrieval.dir/clean

examples/retrieval/CMakeFiles/llama-retrieval.dir/depend:
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lexchien/Documents/LLM/Gemma/gemma.cpp /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/examples/retrieval /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/retrieval /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/examples/retrieval/CMakeFiles/llama-retrieval.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/retrieval/CMakeFiles/llama-retrieval.dir/depend

