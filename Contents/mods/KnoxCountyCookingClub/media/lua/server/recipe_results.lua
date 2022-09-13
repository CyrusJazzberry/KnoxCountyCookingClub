require("recipecode")

function Recipe.OnCreate.GetJarAndLid(items, result, player)
    player:getInventory():AddItems("Base.JarLid", 1);
    player:getInventory():AddItems("Base.EmptyJar", 1);
end

function Recipe.OnCreate.GetEmptyJar(items, result, player)
    player:getInventory():AddItems("Base.EmptyJar", 1);
end

function Recipe.OnCreate.GetEmptyRoastingPan(items, result, player)
    player:getInventory():AddItems("Base.BakingTray", 1);
end