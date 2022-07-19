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
echo . . . . . . . . . . . . . . . . . .
echo Press Enter for create or CTRL-C for EXIT
pause
goto ProjectCreate

:ProjectCreate
mkdir WorldProject_%ProjectName%
cd WorldProject_%ProjectName%
goto IDS

:IDS
POWERSHELL -c "[guid]::NewGuid().ToString().ToUpper()" > %ProjectName%_uuid4.inf
start %home%\timestamp.bat
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
set damage=False
set BlockFly=False
set BlockTerraform=False
set maxusers=99
set ground1=d715f56a-5f80-4174-adcc-f026e945b541
set ground2=d67680a4-3e7c-444f-9a0c-65e93c205255
set ground3=184ce487-726d-468a-a1b7-c950692cf17f
set ground4=beb169c7-11ea-fff2-efe5-0f24dc881df2
set WaterHeight=20
set TerrainRaiseLimit=100
set TerrainLowerLimit=-100
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
echo Making: landdata/%globalid%.xml
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
echo %globalid%.xml Created
cd ..
goto settingsXml

:settingsXml
echo Making: settings/%landname%.xml
cd settings
echo ^<?xml version="1.0" encoding="utf-16"?^> > %landname%.xml
echo ^<RegionSettings^> >> %landname%.xml
echo ^<General^> >> %landname%.xml
echo ^<AllowDamage^>ˇ%damage%^</AllowDamage^> >> %landname%.xml
echo ^<AllowLandResell^>True^</AllowLandResell^> >> %landname%.xml
echo ^<AllowLandJoinDivide^>True^</AllowLandJoinDivide^> >> %landname%.xml
echo ^<BlockFly^>%BlockFly%^</BlockFly^> >> %landname%.xml
echo ^<BlockLandShowInSearch^>False^</BlockLandShowInSearch^> >> %landname%.xml
echo ^<BlockTerraform^>%BlockTerraform%^</BlockTerraform^> >> %landname%.xml
echo ^<DisableCollisions^>False^</DisableCollisions^> >> %landname%.xml
echo ^<DisablePhysics^>False^</DisablePhysics^> >> %landname%.xml
echo ^<DisableScripts^>False^</DisableScripts^> >> %landname%.xml
echo ^<MaturityRating^>2^</MaturityRating^> >> %landname%.xml
echo ^<RestrictPushing^>False^</RestrictPushing^> >> %landname%.xml
echo ^<AgentLimit^>%maxusers%^</AgentLimit^> >> %landname%.xml
echo ^<ObjectBonus^>1^</ObjectBonus^> >> %landname%.xml
echo ^</General^> >> %landname%.xml
echo ^<GroundTextures^> >> %landname%.xml
echo ^<Texture1^>%ground1%^</Texture1^> >> %landname%.xml
echo ^<Texture2^>%ground2%^</Texture2^> >> %landname%.xml
echo ^<Texture3^>%ground3%^</Texture3^> >> %landname%.xml
echo ^<Texture4^>%ground4%^</Texture4^> >> %landname%.xml
echo ^<ElevationLowSW^>10^</ElevationLowSW^> >> %landname%.xml
echo ^<ElevationLowNW^>10^</ElevationLowNW^> >> %landname%.xml
echo ^<ElevationLowSE^>10^</ElevationLowSE^> >> %landname%.xml
echo ^<ElevationLowNE^>10^</ElevationLowNE^> >> %landname%.xml
echo ^<ElevationHighSW^>50^</ElevationHighSW^> >> %landname%.xml
echo ^<ElevationHighNW^>50^</ElevationHighNW^> >> %landname%.xml
echo ^<ElevationHighSE^>50^</ElevationHighSE^> >> %landname%.xml
echo ^<ElevationHighNE^>50^</ElevationHighNE^> >> %landname%.xml
echo ^</GroundTextures^> >> %landname%.xml
echo ^<Terrain^> >> %landname%.xml
echo ^<WaterHeight^>%WaterHeight%^</WaterHeight^> >> %landname%.xml
echo ^<TerrainRaiseLimit^>%TerrainRaiseLimit%^</TerrainRaiseLimit^> >> %landname%.xml
echo ^<TerrainLowerLimit^>%TerrainLowerLimit%^</TerrainLowerLimit^> >> %landname%.xml
echo ^<UseEstateSun^>True^</UseEstateSun^> >> %landname%.xml
echo ^<FixedSun^>False^</FixedSun^> >> %landname%.xml
echo ^<SunPosition^>0^</SunPosition^> >> %landname%.xml
echo ^</Terrain^> >> %landname%.xml
echo ^<Telehub /^> >> %landname%.xml
echo ^<Environment^> >> %landname%.xml
echo ^<data^>^&lt;? llsd/notation ?^&gt;^{'day_cycle':^{'frames':^{'WLWater':^{'blur_multiplier':r0.039999999105930328,'fresnel_offset':r0.5,'fresnel_scale':r0.40000000596046448,'normal_scale':^[r2,r2,r2^],'normal_map':u822ded49-9a6c-f61c-cb89-6df54f42cdf4,'scale_above':r0.029999999329447746,'scale_below':r0.20000000298023224,'underwater_fog_mod':r0.25,'water_fog_color':^[r0.015686299651861191,r0.1490200012922287,r0.25097998976707458^],'water_fog_density':r16,'wave1_direction':^[r1.0499999523162842,r-0.41999998688697815],'wave2_direction':^[r1.1100000143051147,r-1.1599999666213989^],'transparent_texture':u2bfd3884-7e27-69b9-ba3a-3e673f680004,'type':'water'^},'12007412269590497738':^{'absorption_config':^[^{'constant_term':r1,'exp_scale':r0,'exp_term':r0,'linear_term':r-6.6666667407844216E-05,'width':r0^},^{'constant_term':r1,'exp_scale':r0,'exp_term':r0,'linear_term':r-6.6666667407844216E-05,'width':r0^}^],'bloom_id':u3c59f7fe-9dc8-47f9-8aaf-a9dd1fbc3bef,'cloud_color':^[r0.22615399956703186,r0.22615399956703186,r0.22615399956703186],'cloud_id':u1dc1368f-e8fe-f02d-a08d-9d9f11c1af6b,'cloud_pos_density1':^[r1,r0.52609699964523315,r0.87999999523162842],'cloud_pos_density2':^[r1,r0.52609699964523315,r0.125^],'cloud_scale':r0.41999998688697815,'cloud_scroll_rate':^[r0.49940013885498047,r0.010999679565429688^],'cloud_shadow':r0.27000001072883606,'cloud_variance':r0,'dome_offset':r0.95999997854232788,'dome_radius':r15000,'droplet_radius':r800,'gamma':r1,'glow':^[r5,r0.0010000000474974513,r-0.47999998927116394^],'halo_id':u00000000-0000-0000-0000-000000000000,'ice_level':r0,'legacy_haze':^{'ambient':^[r1.0199999809265137,r0.81000000238418579,r0.81000000238418579^],'blue_density':^[r0.14522500336170197,r0.39999699592590332,r0.80000197887420654^],'blue_horizon':^[r0.10767599940299988,r0.21348699927330017,r0.25^],'density_multiplier':r0.00046000001020729542,'distance_multiplier':r1,'haze_density':r0.699999988079071,'haze_horizon':r0.15999999642372131^},'max_y':r562.5,'mie_config':^[^{'anisotropy':r0.800000011920929,'constant_term':r0,'exp_scale':r-0.0008333332953043282,'exp_term':r1,'linear_term':r0,'width':r0^}^],'moisture_level':r0,'moon_brightness':r0.5,'moon_id':uec4b9f0b-d008-45c6-96a4-01dd947ac621,'moon_rotation':^[r-0.99928957223892212,r4.3680334016471534E-08,r0.03768998384475708,r1.64748159559025E-09^],'moon_scale':r1,'planet_radius':r6360,'rainbow_id':u11b4c57c-56b3-04ed-1f82-2004363882e4,'rayleigh_config':^[^{'constant_term':r0,'exp_scale':r-0.00012500000593718141,'exp_term':r1,'linear_term':r0,'width':r0^}^],'sky_bottom_radius':r6360,'sky_top_radius':r6420,'star_brightness':r0,'sun_arc_radians':r0.00044999999227002263,'sun_id':u00000000-0000-0000-0000-000000000000,'sun_rotation':^[r-0.037689879536628723,r1.6474769326535466E-09,r-0.99928951263427734,r-4.3680330463757855E-08^],'sun_scale':r1,'sunlight_color':^[r2.8385701179504395,r2.8385701179504395,r2.8385701179504395,r1^],'type':'sky'^}^},'name':'WLDaycycle','tracks':^[^[^{'key_keyframe':r0,'key_name':'WLWater'^}^],^[^{'key_keyframe':r0,'key_name':'12007412269590497738'^}^],^[^],^[^],^[^]^],'type':'daycycle'^},'day_length':i14400,'day_offset':i57600,'flags':i0,'env_version':i3,'track_altitudes':^[r1000,r2000,r3000^]^}^</data^> >> %landname%.xml
echo ^</Environment^> >> %landname%.xml
echo ^</RegionSettings^> >> %landname%.xml
echo %landname%.xml Created
cd ..



:DEBUG

ECHO _________________________________________________________________
ECHO home=%home% PWD=%cd%
ECHO _________________________________________________________________


pause

































