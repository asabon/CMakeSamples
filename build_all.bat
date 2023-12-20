@echo off

set targetdir=.
set targetprefix=Sample_
for %%d in (%targetdir%\%targetprefix%*) do (
    echo %%d
)
