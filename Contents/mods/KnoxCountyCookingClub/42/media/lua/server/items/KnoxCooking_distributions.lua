-- code framework taken and edited from the zomboid wiki @ pzwiki.net! if you're browsing this code looking to learn how things work under the hood give the wiki a read!
require 'Items/ProceduralDistributions'
require 'Items/SuburbsDistributions'
require 'Items/Distributions'
require "Vehicles/VehicleDistributions"


local lootDistributions = {
    KitchenCannedFood = {
        items = {
            "KnoxCooking.Pesto", 1, -- item, chance
        },
        junk = { -- add stuff to junk tables if needed
        },
    },
    FridgeGeneric = {
        items = {
            "KnoxCooking.Persimmon", 2,
        },
    },
    FridgeRich = {
        items = {
            "KnoxCooking.Persimmon", 2,
        },
    },
    CrepeKitchenFridge = {
        items = {
            "KnoxCooking.Persimmon", 4,
        },
    },
    RestaurantKitchenFridge = {
        items = {
            "KnoxCooking.Persimmon", 2,
        },
    },
    FridgeBreakRoom = {
        items = {
            "KnoxCooking.Persimmon", 4,
        },
    },
    FridgeHoarder = {
        items = {
            "KnoxCooking.Persimmon", 4,
			"KnoxCooking.Pesto", 2,
        },
    },
    FridgeOffice = {
        items = {
            "KnoxCooking.Persimmon", 4,
        },
    },
    GroceryStandFruits3 = {
        items = {
            "KnoxCooking.Persimmon", 10,
        },
    },
    GigamartSpices = {
        items = {
            "KnoxCooking.ItalianSeasoning", 10,
        },
    },
    GigamartSpices = {
        items = {
            "KnoxCooking.ItalianSeasoning", 10,
        },
    },
    KitchenRandom = {
        items = {
            "KnoxCooking.JamFruitJar", 2,
        },
    },
    Homesteading = {
        items = {
            "KnoxCooking.JamFruitJar", 10,
        },
    },
    BinDumpster = {
        items = {
            "KnoxCooking.JamFruitJar", 0.8,
        },
    },
    BinGeneric = {
        items = {
            "KnoxCooking.JamFruitJar", 0.8,
        },
    },
    CrateCamping = {
        items = {
            "KnoxCooking.ForageCookingRecipeMag", 1,
        },
    },
    CrateMagazines = {
        items = {
            "KnoxCooking.HomemadeJamRecipeMag", 1,
            "KnoxCooking.ForageCookingRecipeMag", 1,
        },
    },
    LivingRoomShelf = {
        items = {
            "KnoxCooking.HomemadeJamRecipeMag", 0.1,
            "KnoxCooking.ForageCookingRecipeMag", 0.1,
        },
    },
    LibraryMagazines = {
        items = {
            "KnoxCooking.HomemadeJamRecipeMag", 0.1,
            "KnoxCooking.ForageCookingRecipeMag", 0.1,
        },
    },
    BookstoreOutdoors = {
        items = {
            "KnoxCooking.ForageCookingRecipeMag", 2,
        },
    },
    BookstoreMisc = {
        items = {
            "KnoxCooking.HomemadeJamRecipeMag", 2,
        },
    },
    KitchenBook = {
        items = {
            "KnoxCooking.HomemadeJamRecipeMag", 0.1,
            "KnoxCooking.ForageCookingRecipeMag", 0.1,
        },
    },
}

-- caching for performance reasons
local ProceduralDistributions_list = ProceduralDistributions.list
local table_insert = table.insert

---@param distrib table<string, {items: table<number, string|number>?, junk: table<number, string|number>?}>
local function insertInDistribution(distrib)
    -- iterate through every given distributions
    for k,v in pairs(distrib) do
        -- cache this distribution list
        local ProceduralDistributions_list_k = ProceduralDistributions_list[k]

        -- insert items
        local items = v.items
        local ProceduralDistributions_list_k_items = ProceduralDistributions_list_k.items
        if items then
            for i = 1,#items do
                ProceduralDistributions_list_k_items[#ProceduralDistributions_list_k_items+1] = items[i]
            end
        end

        -- insert junk
        local junk = v.junk
        local ProceduralDistributions_list_k_junk = ProceduralDistributions_list_k.junk
        if junk and ProceduralDistributions_list_k_junk then
            for i = 1,#junk do
                ProceduralDistributions_list_k_junk[#ProceduralDistributions_list_k_junk+1] = junk[i]
            end
        end
    end
end

insertInDistribution(lootDistributions)