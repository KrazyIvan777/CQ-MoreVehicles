CONFIG['MP_003'] = {
	['ConquestSmall0'] = { 
		SubWorldGuids = {
			partitionGuid = Guid('92815F0E-9E3F-4DA4-9CBF-E476E97636CB'), instanceGuid = Guid('2544D8D8-E04D-4864-8112-03EC461361F0') 
		},
		BundlesToMount = {
			{ 
				SuperBundle = 'XP3Chunks', 
			},
			{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/ConquestLarge0' },
				RegistryGuids = { partitionGuid = Guid('FD899CDE-78E2-409A-8FFE-68828370D627'), instanceGuid = Guid('4F81CD2D-1683-F9EE-304D-91260ACB625C') }
			}
		},
		VehicleSpawns = {
			{
				Blueprint = "Vehicles/XP3/M1128-Stryker/M1128-Stryker",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.998576, 0.000000, -0.053357), Vec3(0.000000, 1.000000, 0.000000), Vec3(0.053357, 0.000000, 0.998576), Vec3(-425.936523, 284.316345, -105.100586))
			},{
				Blueprint = "Vehicles/XP3/HIMARS/HIMARS",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.021401, 0.000000, -0.999771), Vec3(0.000000, 1.000000, 0.000000), Vec3(0.999771, 0.000000, 0.021401), Vec3(-469.622131, 284.937347, -86.317383))
			},{
				Blueprint = "Vehicles/XP3/2S25-SPRUT-SD/2S25_SPRUT-SD",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.681270, 0.009088, 0.731976), Vec3(0.000000, 1.000000, 0.000000), Vec3(-0.732018, 0.002203, 0.681282), Vec3(-238.138672, 258.909180, -622.498047))
			},{
				Blueprint = "Vehicles/XP3/STAR_1466/STAR_1466",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.736328, 0.009078, -0.676564), Vec3(0.000000, 1.000000, 0.000000), Vec3(0.676576, 0.002202, 0.736370), Vec3(-204.290039, 258.909241, -637.061523))
			}
		}
	},
	['ConquestLarge0'] = { 
		SubWorldGuids = {
			partitionGuid = Guid('188B00C2-5C8E-4438-A6AC-1C0B842ADFC1'), instanceGuid = Guid('3C556BA9-4F3B-40C8-BB59-2B1F7C8633B4') 
		},
		BundlesToMount = {
			{ 
				SuperBundle = 'XP3Chunks', 
			},
			{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/ConquestLarge0' },
				RegistryGuids = { partitionGuid = Guid('FD899CDE-78E2-409A-8FFE-68828370D627'), instanceGuid = Guid('4F81CD2D-1683-F9EE-304D-91260ACB625C') }
			}
		},
		VehicleSpawns = {
			{
				Blueprint = "Vehicles/XP3/M1128-Stryker/M1128-Stryker",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.998576, 0.000000, -0.053357), Vec3(0.000000, 1.000000, 0.000000), Vec3(0.053357, 0.000000, 0.998576), Vec3(-425.936523, 284.316345, -105.100586))
			},{
				Blueprint = "Vehicles/XP3/HIMARS/HIMARS",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.021401, 0.000000, -0.999771), Vec3(0.000000, 1.000000, 0.000000), Vec3(0.999771, 0.000000, 0.021401), Vec3(-469.622131, 284.937347, -86.317383))
			},{
				Blueprint = "Vehicles/XP3/2S25-SPRUT-SD/2S25_SPRUT-SD",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.681270, 0.009088, 0.731976), Vec3(0.000000, 1.000000, 0.000000), Vec3(-0.732018, 0.002203, 0.681282), Vec3(-238.138672, 258.909180, -622.498047))
			},{
				Blueprint = "Vehicles/XP3/STAR_1466/STAR_1466",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.736328, 0.009078, -0.676564), Vec3(0.000000, 1.000000, 0.000000), Vec3(0.676576, 0.002202, 0.736370), Vec3(-204.290039, 258.909241, -637.061523))
			}
		}
	}	
}

--Change Material Grid

Events:Subscribe('Level:RegisterEntityResources', function(p_LevelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if string.find(levelName, 'MP_003') == nil or gameModeName ~= 'ConquestSmall0' then
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

    if string.find(levelName, 'MP_003') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    p_LevelData = LevelData(p_LevelData)
    p_LevelData:MakeWritable()
    p_LevelData.runtimeMaterialGrid = MaterialGridData(ResourceManager:FindInstanceByGuid(Guid('B9695518-0A56-8183-720E-2A763922CEB3'), Guid('140BAEE0-415B-A04D-3915-0E95DA4A6EE9')))
    print('Material Grid Changed')
end)	