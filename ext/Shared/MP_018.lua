CONFIG['MP_018'] = {
	['ConquestSmall0'] = { 
		SubWorldGuids = {
			partitionGuid = Guid('AD88A8A6-43E7-464B-918A-54B817A09E6B'), instanceGuid = Guid('FBDBC0F7-8649-4775-8826-E60DE0ED8E81') 
		},
		BundlesToMount = {
			{ 
				SuperBundle = 'XP3Chunks', 
			},
			{ 
				SuperBundle = 'Levels/XP3_Desert/XP3_Desert', 
				Bundles = { 'Levels/XP3_Desert/XP3_Desert', 'Levels/XP3_Desert/RushLarge0' },
				RegistryGuids = { partitionGuid = Guid('84E193AC-B7A6-4912-A8A4-D8E2544F9778'), instanceGuid = Guid('724E2BD4-CFEB-0C82-3A11-8FC98EFB765E') }
			}
		},
		VehicleSpawns = {
			{
				Blueprint = "Vehicles/A-10_THUNDERBOLT/A10_THUNDERBOLT",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.841069, -0.013850, -0.540750), Vec3(0.008259, 0.999884, -0.012763), Vec3(0.540864, 0.006268, 0.841086), Vec3(-228.030670, 111.054115, -830.739075))
			},{
				Blueprint = "Vehicles/SU-25TM/SU-25TM",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.934983, -0.061172, -0.349379), Vec3(0.033471, 0.995837, -0.084786), Vec3(0.353111, 0.067580, 0.933138), Vec3(387.265533, 114.693016, 528.841553))
			},
		}
	},
}
