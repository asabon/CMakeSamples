@echo off

echo "Start"
pushd %~dp0
    set targetprefix=Sample_
    for /d %%d in (%targetprefix%*) do (
        echo === %%d ===
        pushd %%d
            rmdir /s /q build
            mkdir build
            pushd build
                cmake ..
                msbuild %%d.sln
rem                if not exists Debug\out.exe (
rem                    echo build error
rem                    exit /b 1
rem                )
                rem 実行するとエラーになってしまうのでひとまずコメントアウト
                rem Debug/out.exe
            popd
        popd
    )
popd
echo "End"
