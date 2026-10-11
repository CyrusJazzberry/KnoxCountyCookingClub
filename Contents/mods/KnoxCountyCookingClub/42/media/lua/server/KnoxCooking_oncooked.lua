-- invert preserves unhappiness when cooked
function KnoxCookingFruitPreservesCooked(food)
	local unhappiness = food:getUnhappyChange();
    food:setUnhappyChange(-unhappiness);
end