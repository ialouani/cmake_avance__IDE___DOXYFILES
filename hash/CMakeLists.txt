add_library(hash_static STATIC hash.c)
target_include_directories(hash_static PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})



add_library(hash_dynamic SHARED hash.c)
target_include_directories(hash_dynamic PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
