setlocal
call :GetUnixTime UNIX_TIME
echo %UNIX_TIME% > %tmp%\timestamp.tmp
goto :EOF

:GetUnixTime
setlocal enableextensions
for /f %%x in ('wmic path win32_utctime get /format:list ^| findstr "="') do (
    set %%x)
set /a z=(14-100%Month%%%100)/12, y=10000%Year%%%10000-z
set /a ut=y*365+y/4-y/100+y/400+(153*(100%Month%%%100+12*z-3)+2)/5+Day-719469
set /a ut=ut*86400+100%Hour%%%100*3600+100%Minute%%%100*60+100%Second%%%100
endlocal & set "%1=%ut%" & goto :EOF





rem <!-- :
rem  for /f "tokens=* usebackq" %%a in (`start /b cscript //nologo "%~f0?.wsf"`) do (set timestamp=%%a)
rem  erase %tmp%\timestamp.tmp
rem  @echo %timestamp% > %tmp%\timestamp.tmp
rem  exit /b
rem -->

rem <job><script language="JavaScript">
rem  WScript.Echo(new Date().getTime());
rem </script></job>

rem exit /b
