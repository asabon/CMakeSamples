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
