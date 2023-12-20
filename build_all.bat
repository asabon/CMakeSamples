@echo off

set targetdir=.
set targetprefix=Sample_
for %%d in (%targetdir%\%targetprefix%*) do (
    echo === %%d ===
    pushd %%d
        mkdir build
        pushd build
            cmake ../
        popd
    popd
)

echo === 2nd ===
pushd Sample_01
    mkdir build
    pushd build
        cmake ../
        msbuild Sample_01.sln
    popd
popd
