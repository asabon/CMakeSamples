cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
project(Sample_01)

# 実行ファイル名
# Linux   : out
# Windows : out.exe
set(TARGET_EXE out)

add_executable(
    ${TARGET_EXE}
    main.c
)
