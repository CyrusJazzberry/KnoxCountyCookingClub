require("recipecode")

-- jar/lid
function Recipe.OnCreate.GetJarAndLid(items, result, player)
    player:getInventory():AddItems("Base.JarLid", 1);
    player:getInventory():AddItems("Base.EmptyJar", 1);
end

-- jar
function Recipe.OnCreate.GetEmptyJar(items, result, player)
    player:getInventory():AddItems("Base.EmptyJar", 1);
end

-- returns things when the player un-lids pine wine
function Recipe.OnCreate.LidOffPW(items, result, player)
    player:getInventory():AddItems("Base.JarLid", 1);
end

-- returns things when the player starts fermenting pine wine
function Recipe.OnCreate.StartPWFerment(items, result, player)
    player:getInventory():AddItems("Base.Pot", 1);
end

-- baking tray
function Recipe.OnCreate.GetEmptyBakingTray(items, result, player)
    player:getInventory():AddItems("Base.BakingTray", 1);
end

-- roasting pan
function Recipe.OnCreate.GetEmptyRoastingPan(items, result, player)
    player:getInventory():AddItems("Base.RoastingPan", 1);
end

-- major cooking XP
function Recipe.OnGiveXP.Cooking10(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 10);
end

-- average cooking XP
function Recipe.OnGiveXP.Cooking5(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 5);
end

-- minor cooking XP
function Recipe.OnGiveXP.Cooking3(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Cooking, 3);
end