@echo off
color 04
set ss=SPORE
set z=Spore
set e= ENTER
set v=nstall
set t= Press any key to 
set pv=        (patch ver. 
set er= 1004 Error Repair 
set p=PATCHING
set appt=%ss% -%er%
title %appt%
set ea=Electronic Arts\
set rgp=HKLM\SOFTWARE\
set wow=Wow6432node\
set ccp= Creepy and Cute Parts Pack
set ep=%rgp%%ea%%ss%_EP1
set ep64=%rgp%%wow%%ea%%ss%_EP1
set sp=%rgp%%ea%%ss%
set sp64=%rgp%%wow%%ea%%ss%
set cc=%rgp%%ea%%ss%%ccp%
set cc64=%rgp%%wow%%ea%%ss%%ccp%
set dw= /t REG_DWORD /d 
set sz= /t REG_SZ /d 
set sb= /t REG_SZ /f
set s24=                        
:menu
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo %s24%    %z%%er%
echo %s24%         by 0KepOnline
echo.&echo.&echo.
echo %s24%   1 +%e% - Patch %z%
echo %s24% 2 +%e% - Patch %z%: GA
echo %s24% 3 +%e% - Patch %z%: C^&C
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
>nul set /p act=
if %act%==1 (goto spore) else if %act%==2 (goto sporega) else if %act%==3 (goto sporecc) else (exit)
:spore
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo %s24%  ####   %p% %ss%  ####
echo %s24%%pv%1.1)
echo.&echo.&echo.
echo %s24% Drag the [%z%App.exe] here,
echo %s24%        then tap%e%.
echo %s24%  It's in [%z%Bin] folder.
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
>nul set /p exedir=
set exedir=%exedir:"=%
if "%exedir:~0,-25%"=="" (goto wp) else (goto sporepatch)
:sporepatch
set spath=%exedir:~0,-22%
title %appt%[%p%]
reg add "%sp:~0,-6%"
reg add "%sp%"
reg add "%sp%" /v appdir%sz%"%z%" /f
reg add "%sp%" /v datadir%sz%"%spath%\Data\
reg add "%sp%" /v i%v%completed%dw%0x0000001 /f
reg add "%sp%" /v i%v%loc%sz%"%spath%" /f
reg add "%sp%" /v playerdir%sz%"My %z% Creations" /f
reg add "%sp%" /v reindexyesorno%dw%0 /f
reg add "%sp%" /v SKUID%dw%0 /f
reg add "%sp64:~0,-22%"
reg add "%sp64:~0,-6%"
reg add "%sp64%"
reg add "%sp64%" /v appdir%sz%%z% /f
reg add "%sp64%" /v datadir%sz%"%spath%\Data\
reg add "%sp64%" /v i%v%completed /t REG_DWORD /d 1 /f
reg add "%sp64%" /v i%v%loc%sz%"%spath%" /f
reg add "%sp64%" /v playerdir%sz%"My %z% Creations" /f
reg add "%sp64%" /v reindexyesorno%dw%0 /f
reg add "%sp64%" /v SKUID%dw%0 /f
if errorlevel 1 (goto accessdenied) else (title %appt%&goto completed)
title %appt%
goto completed
:completed
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo %s24%  ####     COMPLETED    ####
echo.&echo.&echo.&echo.
echo %s24%        What to do now?
echo %s24%  1 +%e% - Go to Main Menu
echo %s24%    %e% - Close program
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
>nul set /p fact=
if "%fact%"=="" (exit)
goto menu
:sporega
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo %s24%  ##   %p% %ss%: GA  ##
echo %s24%%pv%1.1)
echo.&echo.&echo.
echo %s24% Drag the [%z%App.exe] here,
echo %s24%       then tap%e%.
echo %s24% It's in [%z%bin_EP1] folder.
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
>nul set /p exedir=
set exedir=%exedir:"=%
if "%exedir:~0,-28%"=="" (goto wp) else (goto sporegapatch)
:sporegapatch
set spgap=%exedir:~0,-25%
title %appt%[%p%]
reg add "%ep:~0,-10%"
reg add "%ep%"
reg add "%ep%" /v AddOnID%dw%2 /f
reg add "%ep%" /v DataDir%sz%"%spgap%\DataEP1\
reg add "%ep%" /v I%v%Loc%sz%"%spgap%" /f
reg add "%ep%" /v PackID%dw%0x7a7f786 /f
reg add "%ep%" /v ProductKey%sb%
reg add "%ep64:~0,-26%"
reg add "%ep64:~0,-10%"
reg add "%ep64%"
reg add "%ep64%" /v AddOnID%dw%2 /f
reg add "%ep64%" /v DataDir%sz%"%spgap%\DataEP1\
reg add "%ep64%" /v I%v%Loc%sz%"%spgap%" /f
reg add "%ep64%" /v PackID%dw%0x7a7f786 /f
reg add "%ep64%" /v ProductKey%sb%
if errorlevel 1 (goto accessdenied) else (title %appt%&goto completed)
title %appt%
:sporecc
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo %s24% ##   %p% %ss%: C^&C  ##
echo %s24%%pv%1.0)
echo.&echo.&echo.
echo %s24%           Drag the
echo %s24%   [BoosterPack_01.package]
echo %s24%      here, then tap%e%.
echo %s24%   It's in [BP1Data] folder.
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
>nul set /p exedir=
set exedir=%exedir:"=%
if "%exedir:~0,-25%"=="" (goto wp) else (goto sporeccpatch)
:sporeccpatch
set sccp=%exedir:~0,-22%
title %appt%[%p%]
reg add "%cc:~0,-33%"
reg add "%cc%"
reg add "%cc%" /v AddOnID%dw%1 /f
reg add "%cc%" /v DataDir%sz%"%sccp%\
reg add "%cc%" /v PackID%dw%0x06f4b5d1 /f
reg add "%cc%" /v ProductKey%sb%
reg add "%cc64:~0,-49%"
reg add "%cc64:~0,-33%"
reg add "%cc64%"
reg add "%cc64%" /v AddOnID%dw%1 /f
reg add "%cc64%" /v DataDir%sz%"%sccp%\
reg add "%cc64%" /v PackID%dw%0x06f4b5d1 /f
reg add "%cc64%" /v ProductKey%sb%
if errorlevel 1 (goto accessdenied) else (title %appt%&goto completed)
:wp
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo %s24% ######   WRONG PATH   ######
echo.&echo.&echo.&echo.
echo %s24%%t%get back to
echo %s24%        the main menu.
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
pause >nul
goto menu
:accessdenied
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo %s24% ####    ACCESS DENIED   ####
echo.&echo.&echo.&echo.
echo %s24% Please, restart this program
echo %s24%  with administrator rights.
echo.
echo %s24%  %t%close
echo %s24%        the program.
echo.&echo.&echo.&echo.&echo.&echo.&echo.
pause >nul
exit
