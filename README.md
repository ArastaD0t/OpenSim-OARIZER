# OpenSimulator-OARIZER
## World Creation Tools for Open Simulator

### Actually in dev....

I try make maps for Open Simulator externally  
My plan is make possible open O.s. World inside  
external editor (`c4d`,`blender`) for faster and  
better world creating and editing....  

If u wanna help me, feel free to use my notes bellow...  
  
  
Notes for devs....

---
#          Reverse engineering of .oar  
    
`open as .zip`
  
## Tools

### UID4 generator
 - https://www.uuidgenerator.net/version4  

### Create official OAR   
 - DreamGrid (for world generate)

---

## USED DREAM GRID  WORLD SETTINGS  
(for create official world (.OAR) to see how it created)  

#PAGE#RegionBasics##  
```
Name:NameOfTheRegion  
enabled:1  
Sim Size 1 X 1  
```
#PAGE#Optional##  
```
Regions 2008 X 2000 Y  
1024 Nonphysical Prim Size  
64 Physical Prim Max Size  
45000 Max numbers of Prims in Parcel  
100 Max number of Avatars + NPCs  
0 Clamp Prim Size  
UUID(version 4)   
```
#PAGE#Maps##  
```
Use Default  
```
#PAGE#Physics##  
```
Use Default  
```
#PAGE#Scripts##  
```
Use Default  
```
#PAGE#Permissions##  
```
Use Default  
```
#CMD#After Create Launch#
```
estate name: NameOfMyEstate  
```
---
## Main File Structure  
- Filename.oar (gzip)  
  - Filename. (tar)  
    - assets (folder)  
    - landdata (folder)  
    - objects (folder)  
    - settings (folder)  
    - terrains (folder)  
    - archive.xml   
---    
- landdata (folder)  
  - bc6b1b4b-c668-4e86-83dc-2bfe47d38749.xml (name is genrated uuid4)  

```
 0 <?xml version="1.0" encoding="utf-16"?>  
 1 <LandData>  
 2   <Area>65536</Area>  
 3   <AuctionID>0</AuctionID>  
 4   <AuthBuyerID>00000000-0000-0000-0000-000000000000</AuthBuyerID>  
 5   <Category>0</Category>  
 6   <ClaimDate>1638498580</ClaimDate>  
 7   <ClaimPrice>0</ClaimPrice>  
 8   <GlobalID>bc6b1b4b-c668-4e86-83dc-2bfe47d38749</GlobalID>  
 9   <GroupID>00000000-0000-0000-0000-000000000000</GroupID>  
 10  <IsGroupOwned>False</IsGroupOwned>  
 11    
 12 <Bitmap>////////////////////////////////////////////////////////////////////////////  
 13 ////////////////////////////////////////////////////////////////////////////////////  
 14 ////////////////////////////////////////////////////////////////////////////////////  
 15 ////////////////////////////////////////////////////////////////////////////////////  
 16 ////////////////////////////////////////////////////////////////////////////////////  
 17 ////////////////////////////////////////////////////////////////////////////////////  
 18 ////////////////////////////////////////////////////////////////////////////////////  
 19 ////////////////////////////////////////////////////////////////////////////////////  
 20 //////////////////8=</Bitmap>  
 21   <Description />  
 22   <Flags>671096907</Flags>  
 23   <LandingType>2</LandingType>  
 24   <Name>Your Parcel</Name>  
 25   <Status>0</Status>  
 26   <LocalID>1</LocalID>  
 27   <MediaAutoScale>0</MediaAutoScale>  
 28   <MediaID>00000000-0000-0000-0000-000000000000</MediaID>  
 29   <MediaURL />  
 30   <MusicURL />  
 31   <OwnerID>afacdd75-c9d4-4925-9f2d-e6c18a2da175</OwnerID>  
 32   <ParcelAccessList />  
 33   <PassHours>0</PassHours>  
 34   <PassPrice>0</PassPrice>  
 35   <SalePrice>0</SalePrice>  
 36   <SnapshotID>00000000-0000-0000-0000-000000000000</SnapshotID>  
 37   <UserLocation>&lt;0, 0, 0&gt;</UserLocation>  
 38   <UserLookAt>&lt;0, 0, 0&gt;</UserLookAt>  
 39   <Dwell>0</Dwell>  
 40   <OtherCleanTime>0</OtherCleanTime>  
 41 </LandData>
```

- settings (folder)
  - NameOfTheRegion.xml  

```
1 <?xml version="1.0" encoding="utf-16"?>  
2 <RegionSettings>  
3   <General>  
4     <AllowDamage>False</AllowDamage>  
5     <AllowLandResell>True</AllowLandResell>  
6     <AllowLandJoinDivide>True</AllowLandJoinDivide>  
7     <BlockFly>False</BlockFly>  
8     <BlockLandShowInSearch>False</BlockLandShowInSearch>  
9     <BlockTerraform>False</BlockTerraform>  
10    <DisableCollisions>False</DisableCollisions>  
11    <DisablePhysics>False</DisablePhysics>  
12    <DisableScripts>False</DisableScripts>  
13    <MaturityRating>0</MaturityRating>  
14    <RestrictPushing>False</RestrictPushing>  
15    <AgentLimit>40</AgentLimit>  
16    <ObjectBonus>1</ObjectBonus>  
17  </General>  
18  <GroundTextures>  
19    <Texture1>b8d3965a-ad78-bf43-699b-bff8eca6c975</Texture1>  
20    <Texture2>abb783e6-3e93-26c0-248a-247666855da3</Texture2>  
21    <Texture3>179cdabd-398a-9b6b-1391-4dc333ba321f</Texture3>  
22    <Texture4>beb169c7-11ea-fff2-efe5-0f24dc881df2</Texture4>  
23    <ElevationLowSW>10</ElevationLowSW>  
24    <ElevationLowNW>10</ElevationLowNW>  
25    <ElevationLowSE>10</ElevationLowSE>  
26    <ElevationLowNE>10</ElevationLowNE>  
27    <ElevationHighSW>60</ElevationHighSW>  
28    <ElevationHighNW>60</ElevationHighNW>  
29    <ElevationHighSE>60</ElevationHighSE>  
30    <ElevationHighNE>60</ElevationHighNE>  
31  </GroundTextures>  
32  <Terrain>  
33    <WaterHeight>20</WaterHeight>  
34    <TerrainRaiseLimit>100</TerrainRaiseLimit>  
35    <TerrainLowerLimit>-100</TerrainLowerLimit>  
36    <UseEstateSun>True</UseEstateSun>  
37    <FixedSun>False</FixedSun>  
38    <SunPosition>0</SunPosition>  
39  </Terrain>  
40  <Telehub />  
41  <Estate>  
42    <AllowDirectTeleport>True</AllowDirectTeleport>  
43    <AllowEnvironmentOverride>False</AllowEnvironmentOverride>  
44  </Estate>  
45 </RegionSettings>  		
 ```
															
															
															
															
															
															
															
															
															
															
															
