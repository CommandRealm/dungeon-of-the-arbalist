##Setting up bosses
execute store result score $boss boss run loot insert 0 1 0 loot random:bosses
function random:reset_chest



##Boss objective resets
scoreboard players set $opened boss 0
scoreboard players set $started boss 0
scoreboard players set $phase boss 1
scoreboard players set $charge boss 0
scoreboard players set $portal boss 0

bossbar remove game:boss
bossbar add game:boss [{"text":""}]

##If there is a boss selected.
execute if score $force_boss boss matches 0.. run scoreboard players operation $boss boss = $force_boss boss

##Making sure this isn't the previous boss.
execute if score $force_boss boss matches -1 if score $boss boss = $last_boss boss run scoreboard players add $boss boss 1
execute if score $boss boss matches 5.. run scoreboard players set $boss boss 0

##setting last boss for next game
scoreboard players operation $last_boss boss = $boss boss

####Ravager

setblock ~ ~-16 ~ air

#Block
execute if score $boss boss matches 0 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"COUNTERCLOCKWISE_90",posX:-16,posY:1,posZ:15,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"minecraft:cube_boss_ravager",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
#Y level of start game button
execute if score $boss boss matches 0 run scoreboard players set $y_level boss 51
execute if score $boss boss matches 0 run scoreboard players set $spawn_delay boss 100
execute if score $boss boss matches 0 run scoreboard players set $cooldown boss 100
execute if score $boss boss matches 0 run scoreboard players set $set_charge boss 30
execute if score $boss boss matches 0 run scoreboard players set $health boss 3000
execute if score $boss boss matches 0 run scoreboard players set $phase_1_attacks boss 1
execute if score $boss boss matches 0 run scoreboard players set $phase_2_attacks boss 3

execute if score $boss boss matches 0 run bossbar set game:boss name ["",{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"dark_red","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" - ","color":"gray"},{"text":"Skelrath ","color":"dark_red"},{"text":"the ","color":"gray"},{"text":"Beast ","color":"red"},{"text":"Warden","color":"dark_gray"}]
execute if score $boss boss matches 0 run data modify storage game:boss name set value '[{"text":"Skelrath","color":"dark_red"}]'
execute if score $boss boss matches 0 run data modify storage game:boss title set value '[{"text":"the ","color":"gray"},{"text":"Beast ","color":"red"},{"text":"Warden","color":"dark_gray"}]'



####Guardian

#Block
execute if score $boss boss matches 1 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-16,posY:1,posZ:-16,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"minecraft:cube_boss_guardian",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
#Y level of start game button
execute if score $boss boss matches 1 run scoreboard players set $y_level boss 54
execute if score $boss boss matches 1 run scoreboard players set $spawn_delay boss 100
execute if score $boss boss matches 1 run scoreboard players set $cooldown boss 100
execute if score $boss boss matches 1 run scoreboard players set $set_charge boss 1
execute if score $boss boss matches 1 run scoreboard players set $health boss 4000
execute if score $boss boss matches 1 run scoreboard players set $phase_1_attacks boss 3
execute if score $boss boss matches 1 run scoreboard players set $phase_2_attacks boss 4

execute if score $boss boss matches 1 run bossbar set game:boss name ["",{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"dark_red","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" - ","color":"gray"},{"text":"Viscean ","color":"dark_red"},{"text":"the ","color":"gray"},{"text":"Overseer","color":"red"}]
execute if score $boss boss matches 1 run data modify storage game:boss name set value '[{"text":"Viscean","color":"dark_red"}]'
execute if score $boss boss matches 1 run data modify storage game:boss title set value '[{"text":"the ","color":"gray"},{"text":"Overseer","color":"red"}]'

####Stray

#Block
execute if score $boss boss matches 2 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-16,posY:1,posZ:-16,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"minecraft:cube_boss_stray",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
#Y level of start game button
execute if score $boss boss matches 2 run scoreboard players set $y_level boss 56
execute if score $boss boss matches 2 run scoreboard players set $spawn_delay boss 100
execute if score $boss boss matches 2 run scoreboard players set $cooldown boss 100
execute if score $boss boss matches 2 run scoreboard players set $set_charge boss 1
execute if score $boss boss matches 2 run scoreboard players set $health boss 3000
execute if score $boss boss matches 2 run scoreboard players set $phase_1_attacks boss 2
execute if score $boss boss matches 2 run scoreboard players set $phase_2_attacks boss 3

execute if score $boss boss matches 2 run bossbar set game:boss name ["",{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"dark_red","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" - ","color":"gray"},{"text":"Nixeous ","color":"dark_red"},{"text":"the ","color":"gray"},{"text":"Scoundrel","color":"red"}]
execute if score $boss boss matches 2 run data modify storage game:boss name set value '[{"text":"Nixeous","color":"dark_red"}]'
execute if score $boss boss matches 2 run data modify storage game:boss title set value '[{"text":"the ","color":"gray"},{"text":"Scoundrel","color":"red"}]'
execute if score $boss boss matches 2 run summon minecraft:stray 2005 64 -9 {Rotation:[45f,0f],Invulnerable:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],PersistenceRequired:1b,Silent:1b,Tags:["die_between_games","nixeous"]}

####Magma Cube

#Block
execute if score $boss boss matches 3 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-16,posY:1,posZ:-16,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"minecraft:cube_boss_magma_cube",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
#Y level of start game button
execute if score $boss boss matches 3 run scoreboard players set $y_level boss 52
execute if score $boss boss matches 3 run scoreboard players set $spawn_delay boss 100
execute if score $boss boss matches 3 run scoreboard players set $cooldown boss 100
execute if score $boss boss matches 3 run scoreboard players set $set_charge boss 20
execute if score $boss boss matches 3 run scoreboard players set $health boss 5000
execute if score $boss boss matches 3 run scoreboard players set $phase_1_attacks boss 2
execute if score $boss boss matches 3 run scoreboard players set $phase_2_attacks boss 3

execute if score $boss boss matches 3 run bossbar set game:boss name ["",{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"dark_red","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" - ","color":"gray"},{"text":"The ","color":"gray"},{"text":"Molten ","color":"dark_red"},{"text":"Titan","color":"red"}]
execute if score $boss boss matches 3 run data modify storage game:boss name set value '[{"text":"The","color":"gray"}]'
execute if score $boss boss matches 3 run data modify storage game:boss title set value '[{"text":"Molten ","color":"dark_red"},{"text":"Titan","color":"red"}]'

####Forest essence

#Block
execute if score $boss boss matches 4 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-16,posY:1,posZ:-16,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"minecraft:cube_boss_forest_essence",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
#Y level of start game button
execute if score $boss boss matches 4 run scoreboard players set $y_level boss 52
execute if score $boss boss matches 4 run scoreboard players set $spawn_delay boss 100
execute if score $boss boss matches 4 run scoreboard players set $cooldown boss 100
execute if score $boss boss matches 4 run scoreboard players set $set_charge boss 20
execute if score $boss boss matches 4 run scoreboard players set $health boss 2500
execute if score $boss boss matches 4 run scoreboard players set $phase_1_attacks boss 1
execute if score $boss boss matches 4 run scoreboard players set $phase_2_attacks boss 3

execute if score $boss boss matches 4 run bossbar set game:boss name ["",{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"dark_red","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" - ","color":"gray"},{"text":"Essence ","color":"dark_red"},{"text":"of ","color":"gray"},{"text":"the ","color":"red"},{"text":"Forest","color":"dark_gray"}]
execute if score $boss boss matches 4 run data modify storage game:boss name set value '[{"text":"Essence","color":"dark_red"}]'
execute if score $boss boss matches 4 run data modify storage game:boss title set value '[{"text":"of ","color":"gray"},{"text":"the ","color":"red"},{"text":"Forest","color":"dark_gray"}]'


##Giant
summon giant 2000.0 10 0.0 {Invulnerable:1b,Tags:["start_boss_fight_button","die_between_games"],ActiveEffects:[{Id:14b,Amplifier:0,Duration:100000000,ShowParticles:false}],PersistenceRequired:1b,Silent:1b,HandItems:[{id:"minecraft:chiseled_nether_bricks",Count:1b},{}],NoGravity:1b}
team join collision @e[type=giant,tag=start_boss_fight_button]

##Summoning aec for marking the starting area.
summon area_effect_cloud 2000.0 40 0.0 {Tags:["raycast","start_boss_fight","die_between_games"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
scoreboard players operation $calculate calculate = $y_level boss
scoreboard players add $calculate calculate 9
execute store result entity @e[type=area_effect_cloud,tag=start_boss_fight,limit=1] Pos[1] double 1 run scoreboard players get $calculate calculate