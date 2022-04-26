add_executable(example1 example.c)
add_executable(example2 example.c)



target_link_libraries(example1 LINK_PUBLIC hash_static)
target_link_libraries(example2 LINK_PUBLIC hash_dynamic)
