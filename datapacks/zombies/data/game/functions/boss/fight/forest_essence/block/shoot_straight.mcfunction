##Called to shoot a block straight ahead.

##Randomization.
execute store result score $rand random run loot insert 0 1 0 loot random:5
function random:reset_chest

execute if score $rand random matches 1 as @e[type=zombie,tag=boss,limit=1] at @s facing entity @p[tag=playing,team=game,gamemode=adventure] feet run summon armor_stand ^ ^ ^1 {Invulnerable:1b,Invisible:1b,Tags:["die_between_games","essence_block_marker","needs_adjustments"],Small:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,BlockState:{Name:"minecraft:grass_block"},Tags:["die_between_games","essence_block","essence_grass"]}]}
execute if score $rand random matches 2 as @e[type=zombie,tag=boss,limit=1] at @s facing entity @p[tag=playing,team=game,gamemode=adventure] feet run summon armor_stand ^ ^ ^1 {Invulnerable:1b,Invisible:1b,Tags:["die_between_games","essence_block_marker","needs_adjustments"],Small:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,BlockState:{Name:"minecraft:mossy_cobblestone"},Tags:["die_between_games","essence_block","essence_mossy"]}]}
execute if score $rand random matches 3 as @e[type=zombie,tag=boss,limit=1] at @s facing entity @p[tag=playing,team=game,gamemode=adventure] feet run summon armor_stand ^ ^ ^1 {Invulnerable:1b,Invisible:1b,Tags:["die_between_games","essence_block_marker","needs_adjustments"],Small:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,BlockState:{Name:"minecraft:oak_leaves"},Tags:["die_between_games","essence_block","essence_leaves"]}]}
execute if score $rand random matches 4 as @e[type=zombie,tag=boss,limit=1] at @s facing entity @p[tag=playing,team=game,gamemode=adventure] feet run summon armor_stand ^ ^ ^1 {Invulnerable:1b,Invisible:1b,Tags:["die_between_games","essence_block_marker","needs_adjustments"],Small:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,BlockState:{Name:"minecraft:bee_nest"},Tags:["die_between_games","essence_block","essence_bee"]}]}
execute if score $rand random matches 5 as @e[type=zombie,tag=boss,limit=1] at @s facing entity @p[tag=playing,team=game,gamemode=adventure] feet run summon armor_stand ^ ^ ^1 {Invulnerable:1b,Invisible:1b,Tags:["die_between_games","essence_block_marker","needs_adjustments"],Small:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,BlockState:{Name:"minecraft:melon"},Tags:["die_between_games","essence_block","essence_melon"]}]}

####Applying motion

##X
execute store result score $calculate calculate run data get entity @e[type=zombie,tag=boss,limit=1] Pos[0] 100
execute store result score $calculate_2 calculate run data get entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Pos[0] 100
scoreboard players operation $calculate_2 calculate -= $calculate calculate
execute store result entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Motion[0] double 0.025 run scoreboard players get $calculate_2 calculate
##Y
execute store result score $calculate calculate run data get entity @e[type=zombie,tag=boss,limit=1] Pos[1] 100
execute store result score $calculate_2 calculate run data get entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Pos[1] 100
scoreboard players operation $calculate_2 calculate -= $calculate calculate
execute store result entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Motion[1] double 0.025 run scoreboard players get $calculate_2 calculate
##Z
##X
execute store result score $calculate calculate run data get entity @e[type=zombie,tag=boss,limit=1] Pos[2] 100
execute store result score $calculate_2 calculate run data get entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Pos[2] 100
scoreboard players operation $calculate_2 calculate -= $calculate calculate
execute store result entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Motion[2] double 0.025 run scoreboard players get $calculate_2 calculate


##Removing tags
execute store result score $calculate calculate run data get entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Pos[1] 1
scoreboard players add $calculate calculate 1
execute store result entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Pos[1] double 1 run scoreboard players get $calculate calculate
tag @e[type=armor_stand,tag=needs_adjustments] remove needs_adjustments

##Sound
execute at @e[type=zombie,tag=boss,limit=1] run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 10000 0