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
	spawnFuncs = { doWildFoodSpawn, doRandomAgeSpawn },
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
	spawnFuncs = { doWildFoodSpawn, doRandomAgeSpawn },
};

local Rhubarb = {
	type="KnoxCooking.Rhubarb",
	minCount=1,
	maxCount=2,
	skill = 3,
	xp=5,
	snowChance = -10,
	categories = { "Vegetables" },
	months = { 3, 4, 5, 6, 7, 8, 9, 10 },
	bonusMonths = { 5, 6, 7 },
	malusMonths = { 8, 9, 10 },
	zones={ Forest = 10.0, DeepForest = 10.0, Vegitation = 5.0, FarmLand = 10.0, Farm = 10.0 },
	spawnFuncs = { doWildFoodSpawn, doRandomAgeSpawn },
};

local CannedMilk = {
	type="Base.CannedMilk",
	minCount=1,
	maxCount=3,
	xp=5,
	categories = { "JunkFood" },
	zones={ Forest = 1.0, DeepForest = 1.0, FarmLand = 3.0, Farm = 3.0, Vegitation = 1.0, TrailerPark = 5.0, TownZone = 5.0, Nav = 1.0 },
	spawnFuncs = { doWildFoodSpawn, doRandomAgeSpawn },
};

forageSystem.addItemDef(Mugwort);
forageSystem.addItemDef(Persimmon);
forageSystem.addItemDef(Rhubarb);
forageSystem.addItemDef(CannedMilk);

end);
