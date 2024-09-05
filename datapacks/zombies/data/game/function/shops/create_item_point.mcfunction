##Called to create an item spawn point.


##Filling nearby area
execute unless score $game state matches 0 run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:command_block

##aec
execute unless score $game state matches 0 run summon minecraft:marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","shop_item_point"]}
return 1