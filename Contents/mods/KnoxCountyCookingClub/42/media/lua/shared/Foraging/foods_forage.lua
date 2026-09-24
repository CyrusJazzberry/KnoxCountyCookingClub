require "Foraging/forageDefinitions";
require "Foraging/forageSystem";

Events.onAddForageDefs.Add(function()

local Persimmon = {
	type		=	"KnoxCooking.Persimmon",
	minCount	=	1,
	maxCount	=	3,
	xp			=	5,
	skill		=	5,
	snowChance 	= 	-10,
	categories 	= 	{ "Fruits" },
	months 		= 	{ 1, 2, 9, 10, 11, 12 },
	bonusMonths = 	{ 9, 10 },
	malusMonths = 	{ 1, 2 },
	zones	=	{ 
			Forest = 10, 
			DeepForest = 10, 
			FarmLand = 15, 
			PHForest = 5,
			PRForest =5,
			Farm = 10 
		},
	spawnFuncs = { forageSystem.doWildFoodSpawn, forageSystem.doRandomAgeSpawn },
	altWorldTexture = forageSystem.worldSprites.smallTrees,
};
local Honeycomb = {
	type		=	"KnoxCooking.Honeycomb",
	minCount	=	1,
	maxCount	=	2,
	xp			=	5,
	skill		=	2,
	snowChance 	= 	-10,
	categories 	= 	{ "JunkFood" },
	months 		= 	{ 4, 5, 6, 7, 8, 9,  10 },
	bonusMonths = 	{ 6, 7, 8 },
	malusMonths = 	{ 9, 10 },
	zones	=	{ 
			Forest = 4, 
			DeepForest = 4, 
			FarmLand = 2, 
			PHForest = 5,
			PRForest =5,
			Farm = 2 
		},
	spawnFuncs = { forageSystem.doWildFoodSpawn, forageSystem.doGenericItemSpawn },
};
local ItalianSeasoning = {
	type		=	"KnoxCooking.ItalianSeasoning",
	minCount	=	1,
	maxCount	=	1,
	xp			=	5,
	categories 	= 	{ "JunkFood", "Trash" },
	zones	=	{ 
			TrailerPark = 1,
			TownZone = 1,
			ForagingNav = 1,
		},
	spawnFuncs = { forageSystem.doWorldAgeSpawn, forageSystem.doGenericItemSpawn },
};
local Pesto = {
	type		=	"KnoxCooking.Pesto",
	minCount	=	1,
	maxCount	=	1,
	xp			=	5,
	categories 	= 	{ "JunkFood", "Trash" },
	zones	=	{ 
			TrailerPark = 1,
			TownZone = 1,
			ForagingNav = 1,
		},
	spawnFuncs = { forageSystem.doWorldAgeSpawn, forageSystem.doGenericItemSpawn },
};

forageSystem.addItemDef(Persimmon);
forageSystem.addItemDef(Honeycomb);
forageSystem.addItemDef(ItalianSeasoning);
forageSystem.addItemDef(Pesto);

end);
