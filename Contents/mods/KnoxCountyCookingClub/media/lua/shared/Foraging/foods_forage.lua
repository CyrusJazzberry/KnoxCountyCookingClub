require "Foraging/forageSystem"

Events.onAddForageDefs.Add(function()

local Mugwort = {
	type		=	"KnoxCooking.Mugwort",
	minCount	=	1,
	maxCount	=	3,
	xp			=	5,
	rainChance 	= 	15,
	categories 	= 	{ "WildHerbs" },
	months 		= 	{ 3, 4, 5, 6, 7, 8, 9, 10, 11 },
	bonusMonths = 	{ 8, 9, 10 },
	malusMonths = 	{ 3, 4 },
	zones	=	{ 
			Forest = 1, 
			DeepForest = 1, 
			FarmLand = 1, 
			Farm = 1, 
			Vegitation = 1, 
			TrailerPark = 1, 
			TownZone= 1 , 
			Nav = 0 
		},
	spawnFuncs = { doWildFoodSpawn },
	forceOutside = false,
	altWorldTexture = worldSprites.wildPlants,
};

local Persimmon = {
	type		=	"KnoxCooking.Persimmon",
	minCount	=	1,
	maxCount	=	3,
	xp			=	5,
	snowChance 	= 	-10,
	categories 	= 	{ "Fruits" },
	months 		= 	{ 1, 2, 9, 10, 11, 12 },
	bonusMonths = 	{ 9, 10 },
	malusMonths = 	{ 1, 2 },
	zones	=	{ 
			Forest = 10, 
			DeepForest = 10, 
			FarmLand = 20, 
			Farm = 20 
		},
	spawnFuncs = { doWildFoodSpawn, doRandomAgeSpawn },
	forceOutside = false,
	altWorldTexture = worldSprites.smallTrees,
};

local Rhubarb = {
	type="KnoxCooking.Rhubarb",
	minCount	=	1,
	maxCount	=	2,
	skill 		= 	3,
	xp			=	5,
	snowChance  = 	-10,
	categories 	= { "Vegetables" },
	months 		= { 3, 4, 5, 6, 7, 8, 9, 10 },
	bonusMonths = { 5, 6, 7 },
	malusMonths = { 8, 9, 10 },
	zones	=	{ 
			Forest = 15, 
			DeepForest = 15, 
			Vegitation = 10, 
			FarmLand = 10, 
			Farm = 10 
		},
	spawnFuncs = { doWildFoodSpawn },
	forceOutside = true,
	altWorldTexture = worldSprites.wildPlants,
};

local CannedMilk = {
	type		=	"Base.CannedMilk",
	minCount	=	1,
	maxCount	=	3,
	xp			=	5,
	categories 	= 	{ "JunkFood" },
	zones	=	{ 
			Forest = 1, 
			DeepForest = 1, 
			FarmLand = 3, 
			Farm = 3, 
			Vegitation = 1, 
			TrailerPark = 5, 
			TownZone = 5, 
			Nav = 1 
		},
	spawnFuncs = { doGenericItemSpawn },
};

forageSystem.addItemDef(Mugwort);
forageSystem.addItemDef(Persimmon);
forageSystem.addItemDef(Rhubarb);
forageSystem.addItemDef(CannedMilk);

end);
