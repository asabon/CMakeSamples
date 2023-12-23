cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
project(Sample_03)

# 実行ファイル名
# Linux   : out
# Windows : out.exe
set(TARGET_EXE out)

add_executable(
    ${TARGET_EXE}
    ${CMAKE_CURRENT_SOURCE_DIR}/main.c
)

# LibA をビルド
add_subdirectory(LibA)

# LibA のヘッダファイルを main.c から参照できるようにインクルードパスを通す
target_include_directories(
    ${TARGET_EXE}
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/LibA
)

# LibA を実行ファイルにリンクする
target_link_libraries(
    ${TARGET_EXE}
    PRIVATE
        LibA
)
