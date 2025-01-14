
@ REM ######################################
@ REM # Variable to ignore <CR> in DOS
@ REM # line endings
@ set SHELLOPTS=igncr

@ REM ######################################
@ REM # Variable to ignore mixed paths
@ REM # i.e. G:/$SOPC_KIT_NIOS2/bin
@ set CYGWIN=nodosfilewarning

@set QUARTUS_BIN=C:\intelFPGA_lite\18.1\quartus\bin64
@if exist %QUARTUS_BIN%\\quartus_pgm.exe (goto DownLoad)

@set QUARTUS_BIN=C:\intelFPGA_lite\18.1\quartus\bin64
@if exist %QUARTUS_BIN%\\quartus_pgm.exe (goto DownLoad)

:: Prepare for future use (if exes are in bin32)
@set QUARTUS_BIN=C:\intelFPGA_lite\18.1\quartus\bin64

:DownLoad
%QUARTUS_BIN%\\quartus_pgm.exe -m jtag -c 1 -o "p;DE10_LITE_D8M_VIP.sof"
@ set SOPC_BUILDER_PATH=%SOPC_KIT_NIOS2%+%SOPC_BUILDER_PATH% 
@ "%QUARTUS_BIN%\\cygwin\bin\bash.exe" --rcfile ".\test.sh" 

pause
