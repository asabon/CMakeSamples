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
                if [ -e ./out ]; then
                    ./out
                    echo "[OK] $dir"
                else
                    echo "[NG] $dir"
                    exit 1;
                fi
            popd
        fi
    popd
done
