##Called to create a shopkeeper point


##Filling nearby area
execute unless score $game state matches 0 run fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace minecraft:command_block

##aec
execute unless score $game state matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","shopkeeper_point"]}
return 1