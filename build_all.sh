#!/bin/bash

dirs=`find . -type d -name "Sample_*"`

for dir in $dirs;
do
    pushd $dir
        if [ -e CMakeLists.txt ]; then
            rm -rf build
            mkdir -p build
            pushd build
                cmake ..
                make
                if [ -e ./out.exe ]; then
                    ./out.exe
                    echo "[OK] $dir"
                else
                    echo "[NG] $dir"
                fi
            popd
        fi
    popd
done
