cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
project(C_01)

set(TARGET_EXE out.exe)

# 実行ファイルを作る
add_executable(
    ${TARGET_EXE}
    main.c
)

# LibA をビルドする
add_subdirectory(LibA)

# LibA のヘッダファイルを main.c から参照できるようにインクルードパスを通す
target_include_directories(
    ${TARGET_EXE}
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/LibA/include
)

# LibA を実行ファイルにリンクする
target_link_libraries(
    ${TARGET_EXE}
    PRIVATE
        LibA
)
