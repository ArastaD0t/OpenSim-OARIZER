echo off
<!-- :
  for /f "tokens=* usebackq" %%a in (`start /b cscript //nologo "%~f0?.wsf"`) do (set timestamp=%%a)
  echo %timestamp: =% > %tmp%\timestamp.tmp
  exit /b
-->

<job><script language="JavaScript">
  WScript.Echo(new Date().getTime());
</script></job>

exit