set(TARGET_NAME LibA)

# ライブラリにソースコードを登録する
add_library(
    ${TARGET_NAME}
    ${CMAKE_CURRENT_SOURCE_DIR}/liba.c
)

add_subdirectory(CompAdd)
add_subdirectory(CompSub)

target_link_libraries(
    ${TARGET_NAME}
    PRIVATE
        CompAdd
        CompSub
)

# ライブラリから参照するヘッダファイルのインクルードパスを通す
target_include_directories(
    ${TARGET_NAME}
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/CompAdd
        ${CMAKE_CURRENT_SOURCE_DIR}/CompSub
)
