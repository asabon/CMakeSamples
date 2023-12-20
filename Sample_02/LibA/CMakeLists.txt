set(TARGET_LIB LibA)

# ライブラリにソースコードを登録する
add_library(
    ${TARGET_LIB}
    ${CMAKE_CURRENT_SOURCE_DIR}/source/liba.c
)

# ライブラリから参照するヘッダファイルのインクルードパスを通す
target_include_directories(
    ${TARGET_LIB}
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
