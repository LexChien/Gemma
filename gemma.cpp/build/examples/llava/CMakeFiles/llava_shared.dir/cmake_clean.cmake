file(REMOVE_RECURSE
  "../../bin/libllava_shared.dylib"
  "../../bin/libllava_shared.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/llava_shared.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
