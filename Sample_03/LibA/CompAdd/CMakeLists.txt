set(TARGET_NAME CompAdd)

# ライブラリにソースコードを登録する
add_library(
    ${TARGET_NAME}
    ${CMAKE_CURRENT_SOURCE_DIR}/add.c
)
