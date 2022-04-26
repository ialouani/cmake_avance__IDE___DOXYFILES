add_library(hash_static STATIC hash.c)
target_include_directories(hash_static PUBLIC ${CMAKE_SOURCE_DIR}/hash)
#hash_static:hash.c puis ajouter la dependance hash.h
#via target_?? puis PUBLIC ${CMAKE_SOURCE_DIR}/hash (nouvelle variable).
#qui designe le repertoir source de cmake cad build/../* -R.///
add_library(hash_dynamic SHARED hash.c)
target_include_directories(hash_dynamic PUBLIC ${CMAKE_SOURCE_DIR}/hash)
