CONFIG = {}
require("__shared/MP_001") -- Grand Bazaar
require("__shared/MP_003") -- Teheran Highway
require("__shared/MP_012") -- Operation Firestorm
require("__shared/MP_018") -- Kharg Island
require("__shared/XP5_002") -- Nebandan Flats


local networkIndex

function ResetIndex()
	networkIndex = 0x7FFF
end

function GetIndex()
	networkIndex = networkIndex + 1
	return networkIndex
end

function GetVehicleSpawnReference(spawnConfig)
	local vehicleBlueprint = ResourceManager:SearchForDataContainer(spawnConfig.Blueprint)

	if vehicleBlueprint == nil then
		print("Could not find Vehicle blueprint: "..spawnConfig.Blueprint)
		return
	end

	local vehicleSpawnReference = VehicleSpawnReferenceObjectData()
	vehicleSpawnReference.disregardSpawnAllowedSetting = true
	vehicleSpawnReference.indexInBlueprint = GetIndex()
	vehicleSpawnReference.blueprint = VehicleBlueprint(vehicleBlueprint)
	vehicleSpawnReference.blueprintTransform = spawnConfig.Transform
	vehicleSpawnReference.initialSpawnDelay = spawnConfig.InitialSpawnDelay
	vehicleSpawnReference.spawnDelay = spawnConfig.RespawnDelay
	vehicleSpawnReference.maxCount = 0								-- number of times that each individual Vehicle will respawn (0 is infinite)
	vehicleSpawnReference.maxCountSimultaneously = 1				-- number of Vehicles that can be spawned from this object at the same time
	vehicleSpawnReference.totalCountSimultaneouslyOfType = 8		-- number of Vehicles that can be spawned by any spawn object with the same vehicle
	vehicleSpawnReference.applyDamageToAbandonedVehicles = true     -- Whether the Vehicle take damage when left
	vehicleSpawnReference.autoSpawn = true

	return vehicleSpawnReference
end

function OnSubWorldLoaded(instance)
	local registry = RegistryContainer()
	ResetIndex()

	local worldPart = WorldPartData()
	registry.blueprintRegistry:add(worldPart)

	for _, spawnConfig in ipairs(g_CurrentConfig.VehicleSpawns) do
		local spawnReference = GetVehicleSpawnReference(spawnConfig)
		if spawnReference == nil then
			return
		end
		worldPart.objects:add(spawnReference)
		registry.referenceObjectRegistry:add(spawnReference)
	end

	local worldPartReference = WorldPartReferenceObjectData()
	worldPartReference.indexInBlueprint = GetIndex()
	worldPartReference.blueprint = worldPart
	registry.referenceObjectRegistry:add(worldPartReference)

	local subWorldData = SubWorldData(instance)
	subWorldData:MakeWritable()
	subWorldData.objects:add(worldPartReference)

	ResourceManager:AddRegistry(registry, ResourceCompartment.ResourceCompartment_Game)

	print("Added Vehicle spawns")
end


local bundleHook = nil	

function OnLoadBundles(hookCtx, bundles, compartment)
	local hasBeenAdded = {}

	if #bundles == 1 and bundles[1] == SharedUtils:GetLevelName() then
		local newBundles = {}
		for _, bundleInfo in ipairs(g_CurrentConfig.BundlesToMount) do
			for _, bundleName in ipairs(bundleInfo.Bundles or {}) do
				if not hasBeenAdded[bundleName] then
					table.insert(newBundles, bundleName)

					hasBeenAdded[bundleName] = true
				end
			end
		end

		table.insert(newBundles, bundles[1])

		print("Injecting bundles: ")

		for i, bundle in ipairs(newBundles) do
			print(bundle)
		end

		hookCtx:Pass(newBundles, compartment)
	end
end

Events:Subscribe('Level:LoadResources', function(levelName, gameMode, isDedicatedServer)
    local levelId = levelName:reverse():match('[^/]+'):reverse()

    if CONFIG[levelId] == nil or CONFIG[levelId][gameMode] == nil then
        return
    end

    g_CurrentConfig = CONFIG[levelId][gameMode]

	if g_CurrentConfig == nil then
		return
	end

	print("Found config for current level")

	if g_CurrentConfig.SubWorldGuids ~= nil and g_CurrentConfig.VehicleSpawns ~= nil then
		ResourceManager:RegisterInstanceLoadHandlerOnce(g_CurrentConfig.SubWorldGuids.partitionGuid, g_CurrentConfig.SubWorldGuids.instanceGuid, OnSubWorldLoaded)
	end

	local hasBeenMounted = {}

	if g_CurrentConfig.BundlesToMount ~= nil then
		for _, bundleInfo in ipairs(g_CurrentConfig.BundlesToMount) do
			if not hasBeenMounted[bundleInfo.SuperBundle] then
				print("Mounting '"..tostring(bundleInfo.SuperBundle).."' superbundle")

				ResourceManager:MountSuperBundle(bundleInfo.SuperBundle)

				hasBeenMounted[bundleInfo.SuperBundle] = true
			end
		end

		bundleHook = Hooks:Install('ResourceManager:LoadBundles', 1, OnLoadBundles)
	end

	if g_CurrentConfig.SpawnsToDisable ~= nil then
		print("Disabling BMP/LAV spawn")
		for _, spawnInfo in ipairs(g_CurrentConfig.SpawnsToDisable) do
			ResourceManager:RegisterInstanceLoadHandlerOnce(spawnInfo.partitionGuid, spawnInfo.instanceGuid, function(instance)
				local spawnReference = VehicleSpawnReferenceObjectData(instance)
				spawnReference:MakeWritable()

				spawnReference.enabled = false
			end)
		end
	end
end)


Events:Subscribe('Level:RegisterEntityResources', function(levelData)
	if bundleHook ~= nil then
		bundleHook:Uninstall()
		bundleHook = nil
	end

	if g_CurrentConfig == nil then
		return
	end

	local hasBeenAdded = {}

	for _, bundleInfo in ipairs(g_CurrentConfig.BundlesToMount) do
		if bundleInfo.RegistryGuids ~= nil then
			if not hasBeenAdded[bundleInfo.RegistryGuids.instanceGuid:ToString('D')] then
				local registry = ResourceManager:SearchForInstanceByGuid(bundleInfo.RegistryGuids.instanceGuid)

				print("Adding "..bundleInfo.SuperBundle.." registry")

				ResourceManager:AddRegistry(registry, ResourceCompartment.ResourceCompartment_Game)

				hasBeenAdded[bundleInfo.RegistryGuids.instanceGuid:ToString('D')] = true
			end
		end
	end

	g_CurrentConfig = nil
end)
