@echo off
setlocal
set MSYSTEM=MINGW64
set CHERE_INVOKING=1
set emacs_build_dir=%~dp0..
set msys2_dir=c:\msys64
if not exist %msys2_dir%\ (set msys2_dir=%emacs_build_dir%\msys64)
%msys2_dir%\usr\bin\bash.exe -leo pipefail %*
