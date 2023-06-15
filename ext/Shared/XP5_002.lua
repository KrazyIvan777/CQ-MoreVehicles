CONFIG['XP5_002'] = {
	['ConquestSmall0'] = { 
		SubWorldGuids = {
			partitionGuid = Guid('CF38A24C-D379-4830-BA78-81968A4F786F'), instanceGuid = Guid('CE7FD290-E014-4E33-82D4-76272E2EAABE') 
		},
		BundlesToMount = {
			{ 
				SuperBundle = 'XP1Chunks', 
			},
			{ 
				SuperBundle = 'Levels/XP1_004/XP1_004', 
				Bundles = { 'Levels/XP1_004/XP1_004', 'Levels/XP1_004/CQ_S' },
				RegistryGuids = { partitionGuid = Guid('6C5E1DF6-B428-4A11-BA06-15E565B63802'), instanceGuid = Guid('A44167A2-B0D1-3EA5-C4DD-517FD23EC6A2') }
			},
			{ 
				SuperBundle = 'XP3Chunks', 
			},
			{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/RushLarge0' },
				RegistryGuids = { partitionGuid = Guid('84E193AC-B7A6-4912-A8A4-D8E2544F9778'), instanceGuid = Guid('724E2BD4-CFEB-0C82-3A11-8FC98EFB765E') }
			},{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/ConquestLarge0' },
				RegistryGuids = { partitionGuid = Guid('FD899CDE-78E2-409A-8FFE-68828370D627'), instanceGuid = Guid('4F81CD2D-1683-F9EE-304D-91260ACB625C') }
			},{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/SquadDeathMatch1' },
				RegistryGuids = { partitionGuid = Guid('83B14FF4-F2E7-4958-B0BE-4A70E3AEE2FB'), instanceGuid = Guid('12B51009-219C-E31F-D781-0B4B963321FD') }
			},{ 
				SuperBundle = 'Levels/XP3_Alborz/XP3_Alborz', 
				Bundles = { 'Levels/XP3_Alborz/XP3_Alborz', 'Levels/XP3_Alborz/ConquestLarge01' },
				RegistryGuids = { partitionGuid = Guid('3D4CEA4D-3B86-4253-9841-3257927FAB53'), instanceGuid = Guid('133F6403-333F-27C6-7C68-19BB4CA87882') }
			}
		},
		VehicleSpawns = {
			{
				Blueprint = "Vehicles/AAV-7A1/AAV-7A1",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.651690, -0.073912, -0.754875), Vec3(-0.018834, 0.996511, -0.081311), Vec3(0.758251, -0.038772, -0.650808), Vec3(-2210.264648, 67.774406, -425.391632))
			},{
				Blueprint = "Vehicles/XPack01/F35/F35B",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.686310, -0.022125, -0.726973), Vec3(-0.018058, 0.998711, -0.047443), Vec3(0.727085, 0.045688, 0.685026), Vec3(-2174.487549, 63.440117, -563.507080))
			},{
				Blueprint = "Vehicles/A-10_THUNDERBOLT/A10_THUNDERBOLT",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.717967, -0.054114, -0.693970), Vec3(0.017272, 0.998052, -0.059956), Vec3(0.695863, 0.031060, 0.717503), Vec3(-2190.232422, 63.795143, -544.922668))
			},{
				Blueprint = "Vehicles/AH6/AH6_Littlebird",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.836169, -0.113161, -0.536672), Vec3(0.054048, 0.990723, -0.124690), Vec3(0.545803, 0.075256, 0.834527), Vec3(-2205.606934, 63.147243, -514.535522))
			},{
				Blueprint = "Vehicles/XP3/M1128-Stryker/M1128-Stryker",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.840519, -0.093368, -0.533677), Vec3(0.023466, 0.990388, -0.136312), Vec3(0.541274, 0.102049, 0.834631), Vec3(-2191.453125, 65.998535, -466.867188))
			},{
				Blueprint = "Vehicles/XP3/HIMARS/HIMARS",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.804178, -0.110665, -0.583995), Vec3(-0.051094, 0.991749, -0.117575), Vec3(0.592188, -0.064713, -0.803197), Vec3(-2203.919922, 68.434319, -420.779297))
			},{
				Blueprint = "Vehicles/LAV25/LAV_AD",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.857491, 0.037957, -0.513097), Vec3(-0.080235, 0.994939, -0.060487), Vec3(0.508204, 0.093035, 0.856197), Vec3(-2185.731689, 65.556938, -469.970734))
			},{
				Blueprint = "Vehicles/9K22_Tunguska_M/9K22_Tunguska_M",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.309935, 0.014243, 0.950651), Vec3(-0.018429, 0.999610, -0.020984), Vec3(-0.950579, -0.024023, -0.309552), Vec3(-1632.402344, 74.133049, 458.525360))
			},{
				Blueprint = "Vehicles/Z11W/Z-11w",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.977740, -0.125556, -0.168107), Vec3(-0.113041, 0.990194, -0.082085), Vec3(0.176765, -0.061255, -0.982345), Vec3(-1642.982300, 77.514511, 539.083801))
			},{
				Blueprint = "Vehicles/XP3/2S25-SPRUT-SD/2S25_SPRUT-SD",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.865816, -0.003316, 0.500352), Vec3(-0.024961, 0.999019, -0.036571), Vec3(-0.499740, -0.044153, -0.865049), Vec3(-1638.788086, 74.135452, 464.552734))
			},{
				Blueprint = "Vehicles/XP3/STAR_1466/STAR_1466",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.423390, -0.060992, 0.903892), Vec3(-0.041505, 0.997989, 0.047900), Vec3(-0.904996, -0.017236, -0.425071), Vec3(-1632.000732, 74.913750, 448.901276))
			},{
				Blueprint = "Vehicles/SU-25TM/SU-25TM",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.956108, -0.154094, -0.249223), Vec3(-0.144816, 0.987914, -0.055256), Vec3(0.254726, -0.016740, -0.966869), Vec3(-1594.942993, 80.753105, 547.329895))
			}
		}
	},
	['ConquestLarge0'] = { 
		SubWorldGuids = {
			partitionGuid = Guid('EDBFB91A-F8EA-492D-A5FA-39D6AC2DC525'), instanceGuid = Guid('EF6DDB3A-8786-4951-9FFD-867CD5C70E23') 
		},
		BundlesToMount = {
			{ 
				SuperBundle = 'XP1Chunks', 
			},
			{ 
				SuperBundle = 'Levels/XP1_004/XP1_004', 
				Bundles = { 'Levels/XP1_004/XP1_004', 'Levels/XP1_004/CQ_S' },
				RegistryGuids = { partitionGuid = Guid('6C5E1DF6-B428-4A11-BA06-15E565B63802'), instanceGuid = Guid('A44167A2-B0D1-3EA5-C4DD-517FD23EC6A2') }
			},
			{ 
				SuperBundle = 'XP3Chunks', 
			},
			{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/RushLarge0' },
				RegistryGuids = { partitionGuid = Guid('84E193AC-B7A6-4912-A8A4-D8E2544F9778'), instanceGuid = Guid('724E2BD4-CFEB-0C82-3A11-8FC98EFB765E') }
			},{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/ConquestLarge0' },
				RegistryGuids = { partitionGuid = Guid('FD899CDE-78E2-409A-8FFE-68828370D627'), instanceGuid = Guid('4F81CD2D-1683-F9EE-304D-91260ACB625C') }
			},{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/SquadDeathMatch1' },
				RegistryGuids = { partitionGuid = Guid('83B14FF4-F2E7-4958-B0BE-4A70E3AEE2FB'), instanceGuid = Guid('12B51009-219C-E31F-D781-0B4B963321FD') }
			},{ 
				SuperBundle = 'Levels/XP3_Alborz/XP3_Alborz', 
				Bundles = { 'Levels/XP3_Alborz/XP3_Alborz', 'Levels/XP3_Alborz/ConquestLarge01' },
				RegistryGuids = { partitionGuid = Guid('3D4CEA4D-3B86-4253-9841-3257927FAB53'), instanceGuid = Guid('133F6403-333F-27C6-7C68-19BB4CA87882') }
			}
		},
		VehicleSpawns = {
			{
				Blueprint = "Vehicles/AAV-7A1/AAV-7A1",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.651690, -0.073912, -0.754875), Vec3(-0.018834, 0.996511, -0.081311), Vec3(0.758251, -0.038772, -0.650808), Vec3(-2210.264648, 67.774406, -425.391632))
			},{
				Blueprint = "Vehicles/XPack01/F35/F35B",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.686310, -0.022125, -0.726973), Vec3(-0.018058, 0.998711, -0.047443), Vec3(0.727085, 0.045688, 0.685026), Vec3(-2174.487549, 63.440117, -563.507080))
			},{
				Blueprint = "Vehicles/A-10_THUNDERBOLT/A10_THUNDERBOLT",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.717967, -0.054114, -0.693970), Vec3(0.017272, 0.998052, -0.059956), Vec3(0.695863, 0.031060, 0.717503), Vec3(-2190.232422, 63.795143, -544.922668))
			},{
				Blueprint = "Vehicles/AH6/AH6_Littlebird",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.836169, -0.113161, -0.536672), Vec3(0.054048, 0.990723, -0.124690), Vec3(0.545803, 0.075256, 0.834527), Vec3(-2205.606934, 63.147243, -514.535522))
			},{
				Blueprint = "Vehicles/XP3/M1128-Stryker/M1128-Stryker",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.840519, -0.093368, -0.533677), Vec3(0.023466, 0.990388, -0.136312), Vec3(0.541274, 0.102049, 0.834631), Vec3(-2191.453125, 65.998535, -466.867188))
			},{
				Blueprint = "Vehicles/XP3/HIMARS/HIMARS",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.804178, -0.110665, -0.583995), Vec3(-0.051094, 0.991749, -0.117575), Vec3(0.592188, -0.064713, -0.803197), Vec3(-2203.919922, 68.434319, -420.779297))
			},{
				Blueprint = "Vehicles/LAV25/LAV_AD",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.857491, 0.037957, -0.513097), Vec3(-0.080235, 0.994939, -0.060487), Vec3(0.508204, 0.093035, 0.856197), Vec3(-2185.731689, 65.556938, -469.970734))
			},{
				Blueprint = "Vehicles/9K22_Tunguska_M/9K22_Tunguska_M",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.309935, 0.014243, 0.950651), Vec3(-0.018429, 0.999610, -0.020984), Vec3(-0.950579, -0.024023, -0.309552), Vec3(-1632.402344, 74.133049, 458.525360))
			},{
				Blueprint = "Vehicles/Z11W/Z-11w",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.977740, -0.125556, -0.168107), Vec3(-0.113041, 0.990194, -0.082085), Vec3(0.176765, -0.061255, -0.982345), Vec3(-1642.982300, 77.514511, 539.083801))
			},{
				Blueprint = "Vehicles/XP3/2S25-SPRUT-SD/2S25_SPRUT-SD",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.865816, -0.003316, 0.500352), Vec3(-0.024961, 0.999019, -0.036571), Vec3(-0.499740, -0.044153, -0.865049), Vec3(-1638.788086, 74.135452, 464.552734))
			},{
				Blueprint = "Vehicles/XP3/STAR_1466/STAR_1466",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.423390, -0.060992, 0.903892), Vec3(-0.041505, 0.997989, 0.047900), Vec3(-0.904996, -0.017236, -0.425071), Vec3(-1632.000732, 74.913750, 448.901276))
			},{
				Blueprint = "Vehicles/SU-25TM/SU-25TM",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.956108, -0.154094, -0.249223), Vec3(-0.144816, 0.987914, -0.055256), Vec3(0.254726, -0.016740, -0.966869), Vec3(-1594.942993, 80.753105, 547.329895))
			}
		}
	}
}

--Change Material Grid

Events:Subscribe('Level:RegisterEntityResources', function(p_LevelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if string.find(levelName, 'XP5_002') == nil or gameModeName ~= 'ConquestSmall0' then
        return
    end

    p_LevelData = LevelData(p_LevelData)
    p_LevelData:MakeWritable()
    p_LevelData.runtimeMaterialGrid = MaterialGridData(ResourceManager:FindInstanceByGuid(Guid('B9695518-0A56-8183-720E-2A763922CEB3'), Guid('140BAEE0-415B-A04D-3915-0E95DA4A6EE9')))
    print('Material Grid Changed')
end)	

Events:Subscribe('Level:RegisterEntityResources', function(p_LevelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if string.find(levelName, 'XP5_002') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    p_LevelData = LevelData(p_LevelData)
    p_LevelData:MakeWritable()
    p_LevelData.runtimeMaterialGrid = MaterialGridData(ResourceManager:FindInstanceByGuid(Guid('B9695518-0A56-8183-720E-2A763922CEB3'), Guid('140BAEE0-415B-A04D-3915-0E95DA4A6EE9')))
    print('Material Grid Changed')
end)	

