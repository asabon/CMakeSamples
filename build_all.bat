@echo off

pushd %~dp0
    set targetprefix=Sample_
    for /d %%d in (%targetprefix%*) do (
        echo === %%d ===
        pushd %%d
            mkdir build
            pushd build
                cmake ../
                msbuild %%d.sln
                if not exists Debug/out.exe (
                    echo build error
                    exit /b 1
                )
                rem 実行するとエラーになってしまうのでひとまずコメントアウト
                rem Debug/out.exe
            popd
        popd
    )
popd
