@echo off
rem Do not edit! This batch file is created by CASIO fx-9860G SDK.


if exist BASECONV.G1A  del BASECONV.G1A

cd debug
if exist FXADDINror.bin  del FXADDINror.bin
"C:\CASIO\OS\SH\Bin\Hmake.exe" Addin.mak
cd ..
if not exist debug\FXADDINror.bin  goto error

"C:\CASIO\Tools\MakeAddinHeader363.exe" "C:\Users\IEUser\Documents\CASIO\Projects\BaseConverter"
if not exist BASECONV.G1A  goto error
echo Build has completed.
goto end

:error
echo Build was not successful.

:end

