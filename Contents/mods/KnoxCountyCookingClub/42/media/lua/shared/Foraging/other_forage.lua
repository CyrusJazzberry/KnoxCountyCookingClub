require "Foraging/forageDefinitions";
require "Foraging/forageSystem";

Events.onAddForageDefs.Add(function()

local JamFruitJar = {
	type		=	"KnoxCooking.JamFruitJar",
	xp			=	5,
	categories 	= 	{ "Junk", "Trash" },
	zones	=	{ 
			Forest = 1,
			DeepForest = 1,
			Vegitation = 1,
			FarmLand = 1,
			PHForest = 1,
			PRForest = 1,
			BirchForest = 1,
			OrganicForest = 1,
			Farm = 1,
			TrailerPark = 1,
			TownZone = 1,
			ForagingNav = 1,
		},
	spawnFuncs = { forageSystem.doGenericItemSpawn },
};
local HomemadeJamRecipeMag = {
	type		=	"KnoxCooking.HomemadeJamRecipeMag",
	xp			=	5,
	categories 	= 	{ "Junk", "Trash" },
	zones	=	{ 
			Forest = 10,
			DeepForest = 10,
			Vegitation = 10,
			FarmLand = 10,
			PHForest = 10,
			PRForest = 10,
			BirchForest = 10,
			OrganicForest = 10,
			Farm = 10,
			TrailerPark = 10,
			TownZone = 10,
			ForagingNav = 10,
		},
	spawnFuncs = { forageSystem.doGenericItemSpawn },
};
local ForageCookingRecipeMag = {
	type		=	"KnoxCooking.ForageCookingRecipeMag",
	xp			=	5,
	categories 	= 	{ "Junk", "Trash" },
	zones	=	{ 
			Forest = 10,
			DeepForest = 10,
			Vegitation = 10,
			FarmLand = 10,
			PHForest = 10,
			PRForest = 10,
			BirchForest = 10,
			OrganicForest = 10,
			Farm = 10,
			TrailerPark = 10,
			TownZone = 10,
			ForagingNav = 10,
		},
	spawnFuncs = { forageSystem.doGenericItemSpawn },
};

forageSystem.addItemDef(JamFruitJar);
forageSystem.addItemDef(HomemadeJamRecipeMag);
forageSystem.addItemDef(ForageCookingRecipeMag);

end);
