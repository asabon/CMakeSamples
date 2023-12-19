cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
project(C_01)

set(TARGET_EXE out.exe)

add_executable(
    ${TARGET_EXE}
    main.c
)
