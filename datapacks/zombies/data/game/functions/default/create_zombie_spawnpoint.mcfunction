##Called to create a zombie spawnpoint.
execute if score $game state matches 1.. run setblock ~ ~ ~ air
execute if score $game state matches 1.. unless block ~ ~-1 ~ #minecraft:slabs run summon marker ~ ~ ~ {Tags:["die_between_games","zombie_spawnpoint"]}
execute if score $game state matches 1.. if block ~ ~-1 ~ #minecraft:slabs run summon marker ~ ~-0.5 ~ {Tags:["die_between_games","zombie_spawnpoint"]}