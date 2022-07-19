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
set /p landname=LandName:
cls
echo #####OpenSimulatorSynthetizer#####
echo [version:Alfa1.1      by Danny B.]
echo ##################################
echo WorldName:%ProjectName%
echo LandName:%landname%
set /p landdescription=LandDescription:
cls
echo #####OpenSimulatorSynthetizer#####
echo [version:Alfa1.1      by Danny B.]
echo ##################################
echo WorldName:%ProjectName%
echo LandName:%landname%
echo LandDescription:%landdescription%
cls
echo #####OpenSimulatorSynthetizer#####
echo [version:Alfa1.1      by Danny B.]
echo ##################################
echo WorldName:%ProjectName%
echo LandName:%landname%
echo LandDescription:%landdescription%
set /p size=Size: (256,512,768,1024,1280,1536,1792,2048,2304,2560,2816,3072,3328,3584,3840,4069)
title [OpenSimulatorSynthetizer] - %ProjectName% world - (%size%x%size%)
cls
echo #####OpenSimulatorSynthetizer#####
echo [version:Alfa1.1      by Danny B.]
echo ##################################
echo WorldName:%ProjectName%
echo LandName:%landname%
echo LandDescription:%landdescription%
echo Size:%size%
echo 
echo Press Enter for create or CTRL-C for EXIT
pause
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
set globalid=1b556a9b-8311-467e-9531-85b78b92c7be
set area=65536
set mediaURL=http://stream.intenseradio.net:8000/high
set OwnerID=afacdd75-c9d4-4925-9f2d-e6c18a2da175
set SnapshotID=07a3fa1e-697f-4458-abcf-00ac70199546



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
echo   ^<Area^>%area%^</Area^> >> %globalid%.xml
echo   ^<AuctionID^>0^</AuctionID^> >> %globalid%.xml
echo   ^<AuthBuyerID^>00000000-0000-0000-0000-000000000000^</AuthBuyerID^> >> %globalid%.xml
echo   ^<Category^>0^</Category^> >> %globalid%.xml
echo   ^<ClaimDate^>1605328754^</ClaimDate^> >> %globalid%.xml
echo   ^<ClaimPrice^>0^</ClaimPrice^> >> %globalid%.xml
echo   ^<GlobalID^>%globalid%^</GlobalID^> >> %globalid%.xml
echo   ^<GroupID^>00000000-0000-0000-0000-000000000000^</GroupID^> >> %globalid%.xml
echo   ^<IsGroupOwned^>False^</IsGroupOwned^> >> %globalid%.xml
echo   ^<Bitmap^>//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8=^</Bitmap^> >> %globalid%.xml
echo   ^<Description^>%landdescription%^</Description^> >> %globalid%.xml
echo   ^<Flags^>2183406601^</Flags^> >> %globalid%.xml
echo   ^<LandingType^>1^</LandingType^> >> %globalid%.xml
echo   ^<Name^>%landname%^</Name^> >> %globalid%.xml
echo   ^<Status^>0^</Status^> >> %globalid%.xml
echo   ^<LocalID^>1^</LocalID^> >> %globalid%.xml
echo   ^<MediaAutoScale^>0^</MediaAutoScale^> >> %globalid%.xml
echo   ^<MediaID^>00000000-0000-0000-0000-000000000000^</MediaID^> >> %globalid%.xml
echo   ^<MediaURL^>%mediaURL%^</MediaURL^> >> %globalid%.xml
echo   ^<MusicURL^>%mediaURL%^</MusicURL^> >> %globalid%.xml
echo   ^<OwnerID^>%OwnerID%^</OwnerID^> >> %globalid%.xml
echo   ^<ParcelAccessList /^> >> %globalid%.xml
echo   ^<PassHours^>0^</PassHours^> >> %globalid%.xml
echo   ^<PassPrice^>0^</PassPrice^> >> %globalid%.xml
echo   ^<SalePrice^>0^</SalePrice^> >> %globalid%.xml
echo   ^<SnapshotID^>%SnapshotID%^</SnapshotID^> >> %globalid%.xml
echo   ^<UserLocation^>^&lt;193.747, 221.221, 22.5137^&gt;^</UserLocation^> >> %globalid%.xml
echo   ^<UserLookAt^>^&lt;0.614626, -0.788819, 0^&gt;^</UserLookAt^> >> %globalid%.xml
echo   ^<Dwell^>0^</Dwell^> >> %globalid%.xml
echo   ^<OtherCleanTime^>0^</OtherCleanTime^> >> %globalid%.xml
echo ^</LandData^> >> %globalid%.xml





cd ..

pause

































