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
                    echo "[ERROR] build error.
                    exit /b 1
                )
                call "Debug\out.exe"
                if %errorlevel% neq 0 (
                    echo "[ERROR] errorlevel = %errorlevel%"
                    exit /b 1
                )
            popd
        popd
    )
popd
