##Called to create a zombie spawnpoint.
execute if score $game state matches 1.. run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace command_block
execute if score $game state matches 1.. unless block ~ ~-1 ~ #minecraft:slabs run summon area_effect_cloud ~ ~ ~ {Tags:["die_between_games","earth_upgrade_spot","upgrade_spot","inactive"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score $game state matches 1.. if block ~ ~-1 ~ #minecraft:slabs run summon area_effect_cloud ~ ~-0.5 ~ {Tags:["die_between_games","earth_upgrade_spot","upgrade_spot","inactive"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}