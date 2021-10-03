##Called to create an item spawn point.


##Filling nearby area
execute unless score $game state matches 0 run fill ~ ~ ~ ~ ~ ~ air replace command_block

##aec
execute unless score $game state matches 0 run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","shop_item_point"]}