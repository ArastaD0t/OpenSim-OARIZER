echo off
cd > home.tmp
set /P home=<home.tmp
del home.tmp
title [OpenSimulatorSynthetizer] - unsaved world
cls
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
set /p description=Description:
goto ProjectCreate

:ProjectCreate
mkdir WorldProject_%ProjectName%
cd WorldProject_%ProjectName%
goto IDS

:IDS
POWERSHELL -c "[guid]::NewGuid().ToString().ToUpper()" > %ProjectName%_uuid4.inf
start ..\timestamp.bat
set /p timestamp=<%tmp%\timestamp.tmp
set %timestamp% = %timestamp%
echo %timestamp% > %ProjectName%_timestamp.inf
del %tmp%\timestamp.tmp
goto VARS

:VARS
set /p timestamp=<%home%\WorldProject_%ProjectName%\%ProjectName%_timestamp.inf
set /p uuid4=<%home%\WorldProject_%ProjectName%\%ProjectName%_uuid4.inf
set size=256
set globalid=1b556a9b-8311-467e-9531-85b78b92c7be
set area=65536

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
goto archiveXml

:archiveXml
cls
echo 'Creating archive.xml'
echo ^<?xml version="1.0" encoding="utf-16"?^> > archive.xml
echo ^<archive major_version="0" minor_version="8"^> >> archive.xml
echo   ^<creation_info^> >> archive.xml
echo     ^<datetime^>%timestamp%^</datetime^> >> archive.xml
echo     ^<id^>%uuid4%^</id^> >> archive.xml
echo   ^</creation_info^> >> archive.xml
echo   ^<assets_included^>True^</assets_included^> >> archive.xml
echo   ^<region_info^> >> archive.xml
echo     ^<size_in_meters^>%size%,%size%^</size_in_meters^> >> archive.xml
echo   ^</region_info^> >> archive.xml
echo ^</archive^> >> archive.xml
goto landdataXml

:landdataXml
cd landdata
echo ^<?xml version="1.0" encoding="utf-16"?^> > %globalid%.xml
echo ^<LandData^> >> %globalid%.xml
echo ^<Area^>%area%^</Area^> >> %globalid%.xml
echo ^<AuctionID^>0^</AuctionID^> >> %globalid%.xml
echo ^<AuthBuyerID^>00000000-0000-0000-0000-000000000000^</AuthBuyerID^> >> %globalid%.xml
echo ^<Category^>0^</Category^> >> %globalid%.xml
echo ^<ClaimDate^>1605328754^</ClaimDate^> >> %globalid%.xml
echo ^<ClaimPrice^>0^</ClaimPrice^> >> %globalid%.xml
echo ^<GlobalID^>%globalid%^</GlobalID^> >> %globalid%.xml
echo ^<GroupID^>00000000-0000-0000-0000-000000000000^</GroupID^> >> %globalid%.xml
echo ^<IsGroupOwned^>False^</IsGroupOwned^> >> %globalid%.xml
echo ^<Bitmap^>//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8=^</Bitmap^> >> %globalid%.xml
echo ^<Description^>%description%^</Description^> >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml
echo ^ >> %globalid%.xml




cd ..

pause

































