@echo off

set targetdir=.
set targetprefix=Sample_
for %%d in (%targetprefix%*) do (
    echo === %%d ===
rem    pushd %%d
rem        mkdir build
rem        pushd build
rem            cmake ../
rem            msbuild %%d.sln
rem        popd
rem    popd
)

echo === 2nd ===
pushd Sample_01
    mkdir build
    pushd build
        cmake ../
        msbuild Sample_01.sln
        if not exists Debug/out.exe (
            echo build error
            exit /b 1
        )
        rem 実行するとエラーになってしまうのでひとまずコメントアウト
        rem Debug/out.exe
    popd
popd
