CONFIG['MP_001'] = {
	['ConquestSmall0'] = { 
		SubWorldGuids = {
			partitionGuid = Guid('C98941E6-B300-4D5F-BC2E-ECA03DBF855D'), instanceGuid = Guid('539342BE-2504-4D4F-A60B-8EC27DB005C2') 
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
				Blueprint = "Vehicles/M1A2/M1Abrams",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.862678, -0.003243, 0.505743), Vec3(0.000000, 1.000000, -0.000000), Vec3(-0.505748, -0.001226, 0.862680), Vec3(52.216793, 74.059845, 129.258789))
			},{
				Blueprint = "Vehicles/XP3/M1128-Stryker/M1128-Stryker",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.007437, 0.004923, 0.999960), Vec3(0.000000, 1.000000, 0.000000), Vec3(-0.999972, 0.000022, -0.007437), Vec3(62.896484, 74.057632, 152.241211))
			},{
				Blueprint = "Vehicles/T90/T90",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.004463, 0.004934, -0.999978), Vec3(0.000000, 1.000000, 0.000000), Vec3(0.999331, -0.036337, 0.004281), Vec3(-160.377914, 74.123642, -166.914078))
			},{
				Blueprint = "Vehicles/XP3/2S25-SPRUT-SD/2S25_SPRUT-SD",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.423166, -0.013822, 0.905947), Vec3(0.000000, 1.000000, 0.000000), Vec3(-0.905769, 0.018564, 0.423366), Vec3(-122.765488, 74.321075, -170.943268))
			}
		}
	},
	['ConquestLarge0'] = { 
		SubWorldGuids = {
			partitionGuid = Guid('0CB74E25-485C-4F9F-8CB4-00808FB6F478'), instanceGuid = Guid('224BAD21-C037-4F16-9F90-70FC71E18B54') 
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
				Blueprint = "Vehicles/M1A2/M1Abrams",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.862678, -0.003243, 0.505743), Vec3(0.000000, 1.000000, -0.000000), Vec3(-0.505748, -0.001226, 0.862680), Vec3(52.216793, 74.059845, 129.258789))
			},{
				Blueprint = "Vehicles/XP3/M1128-Stryker/M1128-Stryker",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(-0.007437, 0.004923, 0.999960), Vec3(0.000000, 1.000000, 0.000000), Vec3(-0.999972, 0.000022, -0.007437), Vec3(62.896484, 74.057632, 152.241211))
			},{
				Blueprint = "Vehicles/T90/T90",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.004463, 0.004934, -0.999978), Vec3(0.000000, 1.000000, 0.000000), Vec3(0.999331, -0.036337, 0.004281), Vec3(-160.377914, 74.123642, -166.914078))
			},{
				Blueprint = "Vehicles/XP3/2S25-SPRUT-SD/2S25_SPRUT-SD",
				InitialSpawnDelay = 0,
				RespawnDelay = 30,
				Transform = LinearTransform(Vec3(0.423166, -0.013822, 0.905947), Vec3(0.000000, 1.000000, 0.000000), Vec3(-0.905769, 0.018564, 0.423366), Vec3(-122.765488, 74.321075, -170.943268))
			}
		}
	}
}
