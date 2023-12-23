# Sample_03

## Overview

- ライブラリ内をコンポーネントに分割
- それぞれのコンポーネントを個別にビルド
- 個別にビルドしたコンポーネントをまとめて一つのライブラリにする

## File structure

```text
+ Sample_03
  + LibA/
    + CompAdd/
      + CMakeLists.txt
      + add.c
      + add.h
    + CompSub/
      + CMakeLists.txt
      + sub.c
      + sub.h
    + CMakeLists.txt
    + liba.c
    + liba.h
  + CMakeLists.txt
  + main.c
```
