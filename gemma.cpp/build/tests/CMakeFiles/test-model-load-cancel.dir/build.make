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
include tests/CMakeFiles/test-model-load-cancel.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test-model-load-cancel.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test-model-load-cancel.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test-model-load-cancel.dir/flags.make

tests/CMakeFiles/test-model-load-cancel.dir/codegen:
.PHONY : tests/CMakeFiles/test-model-load-cancel.dir/codegen

tests/CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o: tests/CMakeFiles/test-model-load-cancel.dir/flags.make
tests/CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o: /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/test-model-load-cancel.cpp
tests/CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o: tests/CMakeFiles/test-model-load-cancel.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o -MF CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o.d -o CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o -c /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/test-model-load-cancel.cpp

tests/CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.i"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/test-model-load-cancel.cpp > CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.i

tests/CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.s"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/test-model-load-cancel.cpp -o CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.s

tests/CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o: tests/CMakeFiles/test-model-load-cancel.dir/flags.make
tests/CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o: /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/get-model.cpp
tests/CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o: tests/CMakeFiles/test-model-load-cancel.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o -MF CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o.d -o CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o -c /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/get-model.cpp

tests/CMakeFiles/test-model-load-cancel.dir/get-model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test-model-load-cancel.dir/get-model.cpp.i"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/get-model.cpp > CMakeFiles/test-model-load-cancel.dir/get-model.cpp.i

tests/CMakeFiles/test-model-load-cancel.dir/get-model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test-model-load-cancel.dir/get-model.cpp.s"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests/get-model.cpp -o CMakeFiles/test-model-load-cancel.dir/get-model.cpp.s

# Object files for target test-model-load-cancel
test__model__load__cancel_OBJECTS = \
"CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o" \
"CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o"

# External object files for target test-model-load-cancel
test__model__load__cancel_EXTERNAL_OBJECTS =

bin/test-model-load-cancel: tests/CMakeFiles/test-model-load-cancel.dir/test-model-load-cancel.cpp.o
bin/test-model-load-cancel: tests/CMakeFiles/test-model-load-cancel.dir/get-model.cpp.o
bin/test-model-load-cancel: tests/CMakeFiles/test-model-load-cancel.dir/build.make
bin/test-model-load-cancel: common/libcommon.a
bin/test-model-load-cancel: /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/libcurl.tbd
bin/test-model-load-cancel: bin/libllama.dylib
bin/test-model-load-cancel: bin/libggml.dylib
bin/test-model-load-cancel: bin/libggml-cpu.dylib
bin/test-model-load-cancel: bin/libggml-blas.dylib
bin/test-model-load-cancel: bin/libggml-metal.dylib
bin/test-model-load-cancel: bin/libggml-base.dylib
bin/test-model-load-cancel: tests/CMakeFiles/test-model-load-cancel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/test-model-load-cancel"
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-model-load-cancel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test-model-load-cancel.dir/build: bin/test-model-load-cancel
.PHONY : tests/CMakeFiles/test-model-load-cancel.dir/build

tests/CMakeFiles/test-model-load-cancel.dir/clean:
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-model-load-cancel.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test-model-load-cancel.dir/clean

tests/CMakeFiles/test-model-load-cancel.dir/depend:
	cd /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lexchien/Documents/LLM/Gemma/gemma.cpp /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/tests /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests /Users/lexchien/Documents/LLM/Gemma/gemma.cpp/build/tests/CMakeFiles/test-model-load-cancel.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/test-model-load-cancel.dir/depend

