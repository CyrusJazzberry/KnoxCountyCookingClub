-- code framework taken from Sapph's Cooking!

-- special function for preserves (gathers nutrition and poison value)
function KnoxCookingMakePreserves(craftRecipeData, character)
    local results = craftRecipeData:getAllCreatedItems();
    local items = craftRecipeData:getAllConsumedItems();
    local carbsSum = 0;
    local lipidsSum = 0;
    local proteinsSum = 0;
	local caloriesSum = 0;
	local poisonSum = 0;
    for i=0,items:size() - 1 do
        local item = items:get(i)
        if instanceof(item, "Food") then
            carbsSum = carbsSum + item:getCarbohydrates();
            lipidsSum = lipidsSum + item:getLipids();
            proteinsSum = proteinsSum + item:getProteins();
            caloriesSum = caloriesSum + item:getCalories();
            poisonSum = poisonSum + item:getPoisonPower();
            
        end
    end
    for j=0,results:size() - 1 do
        local result = results:get(j)
            if instanceof(result, "Food") then
			-- guarantees it gives no thirst
            result:setThirstChange(0);
            result:setCarbohydrates(carbsSum);
            result:setLipids(lipidsSum);
            result:setProteins(proteinsSum);
            result:setCalories(caloriesSum);
			-- gives poison jam some kick
			result:setPoisonPower(poisonSum / 4);
			-- detectable at level 5 cooking
			result:setPoisonDetectionLevel(5);
        end
    end
    
end
-- combine all nutrtion values into output (excludes hunger/thirst/unhappiness)
function KnoxCookingCombineAllNutrition(craftRecipeData, character)
    local results = craftRecipeData:getAllCreatedItems();
    local items = craftRecipeData:getAllConsumedItems();
    local carbsSum = 0;
    local lipidsSum = 0;
    local proteinsSum = 0;
	local caloriesSum = 0;
    for i=0,items:size() - 1 do
        local item = items:get(i)
        if instanceof(item, "Food") then
            carbsSum = carbsSum + item:getCarbohydrates();
            lipidsSum = lipidsSum + item:getLipids();
            proteinsSum = proteinsSum + item:getProteins();
            caloriesSum = caloriesSum + item:getCalories();
            
        end
    end
    for j=0,results:size() - 1 do
        local result = results:get(j)
            if instanceof(result, "Food") then
            result:setCarbohydrates(carbsSum);
            result:setLipids(lipidsSum);
            result:setProteins(proteinsSum);
            result:setCalories(caloriesSum);
            result:setPackaged (false);
        end
    end
    
end