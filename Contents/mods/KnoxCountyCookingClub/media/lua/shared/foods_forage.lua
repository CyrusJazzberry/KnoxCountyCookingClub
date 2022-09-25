require "Foraging/forageSystem"

Events.onAddForageDefs.Add(function()

local Mugwort = {
	type="KnoxCooking.Mugwort",
	minCount=1,
	maxCount=3,
	xp=5,
	rainChance = 15,
	categories = { "WildHerbs" },
	months = { 3, 4, 5, 6, 7, 8, 9, 10, 11 },
	bonusMonths = { 8, 9, 10 },
	malusMonths = { 3, 4 },
	zones={ Forest = 1.0, DeepForest = 1.0, FarmLand = 1.0, Farm = 1.0, Vegitation = 1.0, TrailerPark = 1.0, TownZone= 1.0 , Nav = 0 },
	spawnFuncs = { doWildFoodSpawn, doRandomAgeSpawn }
};

local Persimmon = {
	type="KnoxCooking.Persimmon",
	minCount=1,
	maxCount=3,
	xp=5,
	snowChance = -10,
	categories = { "Fruits" },
	months = { 1, 2, 9, 10, 11, 12 },
	bonusMonths = { 9, 10 },
	malusMonths = { 1, 2 },
	zones={ Forest = 5.0, DeepForest = 5.0, FarmLand = 10.0, Farm = 10.0 },
	spawnFuncs = { doWildFoodSpawn, doRandomAgeSpawn }
};

local CannedMilk = {
	type="Base.CannedMilk",
	minCount=1,
	maxCount=3,
	xp=10,
	categories = { "JunkFood" },
	zones={ Forest = 1.0, DeepForest = 1.0, FarmLand = 3.0, Farm = 3.0, Vegitation = 1.0, TrailerPark = 5.0, TownZone = 5.0, Nav = 1.0 },
	spawnFuncs = { doWildFoodSpawn, doRandomAgeSpawn }
};
local RoadRefuse1 = {
	type="KnoxCooking.RoadRefuse1",
	minCount=1,
	maxCount=1,
	xp=10,
	categories = { "DeadAnimals" },
	zones={ Forest = 0, DeepForest = 0, FarmLand = 0, Farm = 0, Vegitation = 0, TrailerPark = 0, TownZone = 0, Nav = 1.0 },
    spawnFuncs = { doDeadTrapAnimalSpawn },
};
local RoadRefuse2 = {
	type="KnoxCooking.RoadRefuse2",
	minCount=1,
	maxCount=1,
	xp=10,
	categories = { "DeadAnimals" },
	zones={ Forest = 0, DeepForest = 0, FarmLand = 0, Farm = 0, Vegitation = 0, TrailerPark = 0, TownZone = 0, Nav = 1.0 },
    spawnFuncs = { doDeadTrapAnimalSpawn },
};

forageSystem.addItemDef(Mugwort);
forageSystem.addItemDef(Persimmon);
forageSystem.addItemDef(CannedMilk);
forageSystem.addItemDef(RoadRefuse1);
forageSystem.addItemDef(RoadRefuse2);

end);
