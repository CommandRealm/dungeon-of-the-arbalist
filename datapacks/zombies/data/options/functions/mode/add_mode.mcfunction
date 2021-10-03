setblock -9 90 28 air
playsound minecraft:ui.button.click master @s
scoreboard players add $mode settings 1
execute if score $mode settings matches 3.. run scoreboard players set $mode settings 0
execute if score $mode settings matches ..-1 run scoreboard players set $mode settings 2

execute if score $mode settings matches 0 run setblock -9 90 28 oak_wall_sign[facing=east]{Text1:'{"text":"Map:","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Dungeon of","color":"gray"}',Text3:'{"text":"the Arbalist","color":"gray"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}
execute if score $mode settings matches 1 run setblock -9 90 28 oak_wall_sign[facing=east]{Text1:'{"text":"Map:","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Invaded","color":"gray"}',Text3:'{"text":"Castle","color":"gray"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}
execute if score $mode settings matches 2 run setblock -9 90 28 oak_wall_sign[facing=east]{Text1:'{"text":"Map:","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Corrupted","color":"gray"}',Text3:'{"text":"Kingdom","color":"gray"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}


particle minecraft:cloud -8 65.5 26 0 0 0 0.05 10

kill @e[tag=display_mode,type=armor_stand]
execute if score $mode settings matches 0 run summon armor_stand -10 89.825 28 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_andesite",Count:1b}]}
execute if score $mode settings matches 1 run summon armor_stand -10 89.825 28 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cracked_stone_bricks",Count:1b}]}
execute if score $mode settings matches 2 run summon armor_stand -10 89.825 28 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:warped_wart_block",Count:1b}]}

##Size
fill -10 90 24 -10 92 24 air destroy
kill @e[type=armor_stand,tag=display_size]

execute if score $mode settings matches 0 run setblock -10 90 24 spruce_planks
execute if score $mode settings matches 0 run setblock -10 91 24 glass
execute if score $mode settings matches 0 run setblock -10 92 24 smooth_stone_slab

execute if score $mode settings matches 0 run scoreboard players remove $grid_size settings 1
execute if score $mode settings matches 0 run function options:size/add_size