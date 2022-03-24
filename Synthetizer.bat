title [OpenSimulatorSynthetizer] - unsaved world
echo #####OpenSimulatorSynthetizer#####
echo [version:Alfa1.1      by Danny B.]
echo ##################################


set /p ProjectName=*WorldName:
title [OpenSimulatorSynthetizer] - %ProjectName% world
cls
echo #####OpenSimulatorSynthetizer#####
echo [version:Alfa1.1      by Danny B.]
echo ##################################
echo WorldName:%ProjectName%
goto ProjectCreate

:ProjectCreate
mkdir WorldProject_%ProjectName%
cd WorldProject_%ProjectName%
goto IDS

:IDS
POWERSHELL -c "[guid]::NewGuid().ToString().ToUpper()" > %ProjectName%_uuid4.inf

<!-- :
  for /f "tokens=* usebackq" %%a in (`start /b cscript //nologo "%~f0?.wsf"`) do (set timestamp=%%a)
  echo %timestamp > %ProjectName%_timestamp.inf
  echo %timestamp% > %ProjectName%_timestamp.inf
  echo %%timestamp >> %ProjectName%_timestamp.inf
  echo %a% >> %ProjectName%_timestamp.inf
  echo %a >> %ProjectName%_timestamp.inf
  echo %%a >> %ProjectName%_timestamp.inf  
  pause
  goto TS
-->

<job><script language="JavaScript">
  WScript.Echo(new Date().getTime());
</script></job>
:TS
echo %timestamp > %ProjectName%_timestamp.inf
echo %timestamp% > %ProjectName%_timestamp.inf
echo %%timestamp >> %ProjectName%_timestamp.inf
echo %a% >> %ProjectName%_timestamp.inf
echo %a >> %ProjectName%_timestamp.inf
echo %%a >> %ProjectName%_timestamp.inf  
goto FilesTree

:FilesTree
mkdir %ProjectName%
cd %ProjectName%
mkdir %ProjectName%
cd %ProjectName%
mkdir assets
mkdir landdata
mkdir objects
mkdir settings
mkdir terrains
goto Xmls

:Xmls
cls
echo 'Creating archive.xml'
echo ^<?xml version="1.0" encoding="utf-16"?^> > archive.xml
echo ^<archive major_version="0" minor_version="8"^> >> archive.xml
echo   ^<creation_info^> >> archive.xml
echo ^<datetime^>%timestamp%^</datetime^> >> archive.xml








pause
































