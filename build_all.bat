@echo off

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
                if not exist "Debug\out.exe" (
                    echo build error
                    exit /b 1
                )
                Debug/out.exe
            popd
        popd
    )
popd
