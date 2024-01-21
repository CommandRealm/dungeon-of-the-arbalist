##Called to start the block attack.

execute store result score $rand random run loot insert 0 1 0 loot random:8

execute if score $rand random matches 0 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,0.0d]}
execute if score $rand random matches 1 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,0.0d]}
execute if score $rand random matches 2 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,0.2d]}
execute if score $rand random matches 3 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,-0.2d]}
execute if score $rand random matches 4 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,-0.2d]}
execute if score $rand random matches 5 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,0.2d]}
execute if score $rand random matches 6 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.0d,0.33d,0.2d]}
execute if score $rand random matches 7 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.0d,0.33d,-0.2d]}

execute store result score $rand random run loot insert 0 1 0 loot random:8

execute if score $rand random matches 0 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,0.0d]}
execute if score $rand random matches 1 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,0.0d]}
execute if score $rand random matches 2 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,0.2d]}
execute if score $rand random matches 3 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,-0.2d]}
execute if score $rand random matches 4 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,-0.2d]}
execute if score $rand random matches 5 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,0.2d]}
execute if score $rand random matches 6 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.0d,0.33d,0.2d]}
execute if score $rand random matches 7 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.0d,0.33d,-0.2d]}

execute store result score $rand random run loot insert 0 1 0 loot random:8

execute if score $rand random matches 0 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,0.0d]}
execute if score $rand random matches 1 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,0.0d]}
execute if score $rand random matches 2 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,0.2d]}
execute if score $rand random matches 3 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,-0.2d]}
execute if score $rand random matches 4 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,-0.2d]}
execute if score $rand random matches 5 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,0.2d]}
execute if score $rand random matches 6 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.0d,0.33d,0.2d]}
execute if score $rand random matches 7 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.0d,0.33d,-0.2d]}

execute store result score $rand random run loot insert 0 1 0 loot random:8

execute if score $rand random matches 0 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,0.0d]}
execute if score $rand random matches 1 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,0.0d]}
execute if score $rand random matches 2 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,0.2d]}
execute if score $rand random matches 3 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,-0.2d]}
execute if score $rand random matches 4 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[-0.2d,0.33d,-0.2d]}
execute if score $rand random matches 5 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.2d,0.33d,0.2d]}
execute if score $rand random matches 6 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.0d,0.33d,0.2d]}
execute if score $rand random matches 7 at @e[type=magma_cube,tag=boss] run summon falling_block ~ ~3.5 ~ {Time:1,Invulnerable:1b,Tags:["die_between_games","magma_block","boss_minion"],BlockState:{Name:"minecraft:magma_block"},Motion:[0.0d,0.33d,-0.2d]}


##Setting scores
scoreboard players set $attack boss 2147483647
