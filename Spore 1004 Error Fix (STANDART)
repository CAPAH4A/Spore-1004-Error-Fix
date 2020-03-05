@echo off
set appt=SPORE - 1004 Error Repair 
title %appt%
set ascii1=                           .,:cclllc;'.
set ascii2=                 ...   .;d0@S########NK@;.
set ascii3=               ,d00: .c0S##SN0k@olcclodO0o.
set ascii4=             .dNSO;.'kS##NOc'. ...',,''''.
set ascii5=            .kS#0, ,0###Kc.'cdkOK@NSSNNKOd:.
set ascii6=           .dS#Nc .@S##@l:k@S#####SSSS####SKd'
set ascii7=           '0##0, ,K###@O@#######S@Ooc:l@KS##@o.
set ascii8=           ;@##0, ;@######       ##SN0o'..c0S#S@.
set ascii9=           ,K##Nl .O###    SPORE   ####@d. .@N#So
set asciia=           .dS##K:.:@## 1004 ERROR ###SO, .@S#0'
set asciib=            .kS##@@:o@####       ####NN###O' ,K#K,
set asciic=          ....o@###NK@##############SdlK##Sl .k#O.
set asciid=          ;0O, .l0N#################@:.@###@..dK:
set asciie=          .@S@o' .,cdOK@NN@K0@S####Nd..k##Sd  ..
set asciif=           .@NS@kc,.....',;c@@####@o. :@##@;
set asciig=             :ON##SKOk@@@OKN####@@,  cK##Nl
set asciih=               ,oO@S#######S@kdl'  ,@N##Kc
set asciii=                  .,clooolc,....,lON#SOo.
set asciij=                           .okOKNN@Oo;.
set asciik=                           .cooooc,.
set bigspace=                            
set ep=HKLM\SOFTWARE\Electronic Arts\SPORE_EP1
set ep64=HKLM\SOFTWARE\Wow6432node\Electronic Arts\SPORE_EP1
set sp=HKLM\SOFTWARE\Electronic Arts\SPORE
set sp64=HKLM\SOFTWARE\Wow6432node\Electronic Arts\SPORE
set cc=HKLM\SOFTWARE\Electronic Arts\SPORE Creepy and Cute Parts Pack
set cc64=HKLM\SOFTWARE\Wow6432node\Electronic Arts\SPORE Creepy and Cute Parts Pack
set s24=                        
:menu
cls
echo.&echo.&echo.&echo.&echo.
color 04
echo %ascii1%
echo %ascii2%
echo %ascii3%
echo %ascii4%
echo %ascii5%
echo %ascii6%%s24%       Spore 1004 Error Repair
echo %ascii7%%s24%          by 0KepOnline
echo %ascii8%
echo %ascii9%
echo %asciia%
echo %asciib%%s24%   1 + ENTER - Patch Spore
echo %asciic%%s24%2 + ENTER - Patch Spore: GA
echo %asciid%%s24% 3 + ENTER - Patch Spore: C^&C
echo %asciie%
echo %asciif%
echo %asciig%
echo %asciih%
echo %asciii%
echo %asciij%
echo %asciik%
echo.&echo.&echo.&echo.&echo.
>nul set /p action=
if %action%==1 (goto spore) else if %action%==2 (goto sporega) else if %action%==3 (goto sporecc) else (exit)
:spore
cls
echo.&echo.&echo.&echo.&echo.
echo %ascii1%
echo %ascii2%
echo %ascii3%
echo %ascii4%
echo %ascii5%
echo %ascii6%%bigspace%####   PATCHING SPORE  ####
echo %ascii7%%s24%        (patch ver. 1.1)
echo %ascii8%
echo %ascii9%
echo %asciia%
echo %asciib%%s24%Drag the [SporeApp.exe] here,
echo %asciic%%s24%        then tap ENTER.
echo %asciid%%s24%  It's in [SporeBin] folder.
echo %asciie%
echo %asciif%
echo %asciig%
echo %asciih%
echo %asciii%
echo %asciij%
echo %asciik%
echo.&echo.&echo.&echo.&echo.
set /p exedir=
set exedir=%exedir:"=%
if "%exedir:~0,-25%"=="" (goto invp) else (goto sporepatch)
:sporepatch
set sporepath=%exedir:~0,-22%
title %appt%[PATCHING]
reg add "%sp:~0,-6%"
reg add "%sp%"
reg add "%sp%" /v appdir /t REG_SZ /d Spore /f
reg add "%sp%" /v datadir /t REG_SZ /d %sporepath%\Data /f
reg add "%sp%" /v installcompleted /t REG_DWORD /d 1 /f
reg add "%sp%" /v installloc /t REG_SZ /d %sporepath% /f
reg add "%sp%" /v playerdir /t REG_SZ /f /d "My Spore Creations"
reg add "%sp%" /v reindexyesorno /t REG_DWORD /d 0 /f
reg add "%sp%" /v SKUID /t REG_DWORD /d 0 /f
reg add "%sp64:~0,-22%"
reg add "%sp64:~0,-6%"
reg add "%sp64%"
reg add "%sp64%" /v appdir /t REG_SZ /d Spore /f
reg add "%sp64%" /v datadir /t REG_SZ /d %sporepath%\Data /f
reg add "%sp64%" /v installcompleted /t REG_DWORD /d 1 /f
reg add "%sp64%" /v installloc /t REG_SZ /d %sporepath% /f
reg add "%sp64%" /v playerdir /t REG_SZ /f /d "My Spore Creations"
reg add "%sp64%" /v reindexyesorno /t REG_DWORD /d 0 /f
reg add "%sp64%" /v SKUID /t REG_DWORD /d 0 /f
if errorlevel 1 (goto accessdenied) else (title %appt%&goto completed)
title %appt%
goto completed
:completed
cls
echo.&echo.&echo.&echo.&echo.
echo %ascii1%
echo %ascii2%
echo %ascii3%
echo %ascii4%
echo %ascii5%
echo %ascii6%%bigspace%####      COMPLETED     ####
echo %ascii7%
echo %ascii8%
echo %ascii9%
echo %asciia%
echo %asciib%%s24%      What to do now?
echo %asciic%%s24%1 + ENTER - Go to Main Menu
echo %asciid%%s24%    ENTER - Close program
echo %asciie%
echo %asciif%
echo %asciig%
echo %asciih%
echo %asciii%
echo %asciij%
echo %asciik%
echo.&echo.&echo.&echo.&echo.
set /p finalaction=
if "%finalaction%"=="" (exit)
goto menu
:sporega
cls
echo.&echo.&echo.&echo.&echo.
echo %ascii1%
echo %ascii2%
echo %ascii3%
echo %ascii4%
echo %ascii5%
echo %ascii6%%bigspace%##   PATCHING SPORE: GA  ##
echo %ascii7%%s24%        (patch ver. 1.1)
echo %ascii8%
echo %ascii9%
echo %asciia%
echo %asciib%%s24%Drag the [SporeApp.exe] here,
echo %asciic%%s24%        then tap ENTER.
echo %asciid%%s24% It's in [Sporebin_EP1] folder.
echo %asciie%
echo %asciif%
echo %asciig%
echo %asciih%
echo %asciii%
echo %asciij%
echo %asciik%
echo.&echo.&echo.&echo.&echo.
set /p exedir=
set exedir=%exedir:"=%
if "%exedir:~0,-28%"=="" (goto invp) else (goto sporegapatch)
:sporegapatch
set sporegapath=%exedir:~0,-25%
title %appt%[PATCHING]
reg add "%ep:~0,-10%"
reg add "%ep%"
reg add "%ep%" /v AddOnID /t REG_DWORD /d 2 /f
reg add "%ep%" /v DataDir /t REG_SZ /d %sporegapath%\DataEP1\ /f
reg add "%ep%" /v InstallLoc /t REG_SZ /d %sporegapath% /f
reg add "%ep%" /v PackID /t REG_DWORD /f /d 0x7a7f786
reg add "%ep%" /v ProductKey /t REG_SZ /f
reg add "%ep64:~0,-26%"
reg add "%ep64:~0,-10%"
reg add "%ep64%"
reg add "%ep64%" /v AddOnID /t REG_DWORD /d 2 /f
reg add "%ep64%" /v DataDir /t REG_SZ /d %sporegapath%\DataEP1\ /f
reg add "%ep64%" /v InstallLoc /t REG_SZ /d %sporegapath% /f
reg add "%ep64%" /v PackID /t REG_DWORD /f /d 0x7a7f786
reg add "%ep64%" /v ProductKey /t REG_SZ /f
if errorlevel 1 (goto accessdenied) else (title %appt%&goto completed)
title %appt%
:invp
cls
echo.&echo.&echo.&echo.&echo.
echo %ascii1%
echo %ascii2%
echo %ascii3%
echo %ascii4%
echo %ascii5%
echo %ascii6%%bigspace%#####   INVALID PATH  #####
echo %ascii7%
echo %ascii8%
echo %ascii9%
echo %asciia%
echo %asciib%%s24%Press any key to get back to
echo %asciic%%s24%       the main menu.
echo %asciid%
echo %asciie%
echo %asciif%
echo %asciig%
echo %asciih%
echo %asciii%
echo %asciij%
echo %asciik%
echo.&echo.&echo.&echo.&echo.
pause >nul
goto menu
:sporecc
cls
echo.&echo.&echo.&echo.&echo.
echo %ascii1%
echo %ascii2%
echo %ascii3%
echo %ascii4%
echo %ascii5%
echo %ascii6%%bigspace%##   PATCHING SPORE: C^&C  ##
echo %ascii7%%s24%        (patch ver. 1.0)
echo %ascii8%
echo %ascii9%
echo %asciia%
echo %asciib%%s24%           Drag the
echo %asciic%%s24%   [BoosterPack_01.package]
echo %asciid%%s24%     here, then press ENTER.
echo %asciie%%s24%     It's in [BP1Data] folder.
echo %asciif%
echo %asciig%
echo %asciih%
echo %asciii%
echo %asciij%
echo %asciik%
echo.&echo.&echo.&echo.&echo.
set /p exedir=
set exedir=%exedir:"=%
if %exedir:~0,-25%=="" (goto invp) else (goto sporeccpatch)
:sporeccpatch
set sporeccpath=%exedir:~0,-22%
title %appt%[PATCHING]
reg add "%cc:~0,-33%"
reg add "%cc%"
reg add "%cc%" /v AddOnID /t REG_DWORD /d 1 /f
reg add "%cc%" /v DataDir /t REG_SZ /f /d %sporeccpath%
reg add "%cc%" /v PackID /t REG_DWORD /d 0x06f4b5d1 /f
reg add "%cc%" /v ProductKey /t REG_SZ /f
reg add "%cc64:~0,-49%"
reg add "%cc64:~0,-33%"
reg add "%cc64%"
reg add "%cc64%" /v AddOnID /t REG_DWORD /d 1 /f
reg add "%cc64%" /v DataDir /t REG_SZ /f /d %sporeccpath%
reg add "%cc64%" /v PackID /t REG_DWORD /d 0x06f4b5d1 /f
reg add "%cc64%" /v ProductKey /t REG_SZ /f
if errorlevel 1 (goto accessdenied) else (title %appt%&goto completed)
:accessdenied
cls
echo.&echo.&echo.&echo.&echo.
echo %ascii1%
echo %ascii2%
echo %ascii3%
echo %ascii4%
echo %ascii5%
echo %ascii6%%bigspace%####    ACCESS DENIED   ####
echo %ascii7%
echo %ascii8%
echo %ascii9%
echo %asciia%
echo %asciib%%s24%Please, restart this program
echo %asciic%%s24% with administrator rights.
echo %asciid%
echo %asciie%%s24%    Press any key to close
echo %asciif%%s24%             the program.
echo %asciig%
echo %asciih%
echo %asciii%
echo %asciij%
echo %asciik%
echo.&echo.&echo.&echo.&echo.
pause >nul
exit
