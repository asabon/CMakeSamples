set(TARGET_NAME CompSub)

# ライブラリにソースコードを登録する
add_library(
    ${TARGET_NAME}
    ${CMAKE_CURRENT_SOURCE_DIR}/sub.c
)
