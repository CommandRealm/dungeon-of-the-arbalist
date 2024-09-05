setblock -9 90 28 minecraft:air
playsound minecraft:ui.button.click master @s
scoreboard players add $mode settings 1
execute if score $mode settings matches 3.. run scoreboard players set $mode settings 0
execute if score $mode settings matches ..-1 run scoreboard players set $mode settings 2

execute if score $mode settings matches 0 run setblock -9 90 28 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Map:","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"},"type":"text"}','{"text":"Dungeon of","color":"gray","type":"text"}','{"text":"the Arbalist","color":"gray","type":"text"}','{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"},"type":"text"}']}}
execute if score $mode settings matches 1 run setblock -9 90 28 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Map:","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"},"type":"text"}','{"text":"Invaded","color":"gray","type":"text"}','{"text":"Castle","color":"gray","type":"text"}','{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"},"type":"text"}']}}
execute if score $mode settings matches 2 run setblock -9 90 28 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Map:","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"},"type":"text"}','{"text":"Corrupted","color":"gray","type":"text"}','{"text":"Kingdom","color":"gray","type":"text"}','{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"},"type":"text"}']}}


particle minecraft:cloud -8 65.5 26 0 0 0 0.05 10

kill @e[type=minecraft:armor_stand,tag=display_mode]
execute if score $mode settings matches 0 run summon minecraft:armor_stand -10 89.825 28 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_andesite",count:1}]}
execute if score $mode settings matches 1 run summon minecraft:armor_stand -10 89.825 28 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cracked_stone_bricks",count:1}]}
execute if score $mode settings matches 2 run summon minecraft:armor_stand -10 89.825 28 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:warped_wart_block",count:1}]}

##Size
fill -10 90 24 -10 92 24 minecraft:air destroy
kill @e[type=minecraft:armor_stand,tag=display_size]

execute if score $mode settings matches 0 run setblock -10 90 24 minecraft:spruce_planks
execute if score $mode settings matches 0 run setblock -10 91 24 minecraft:glass
execute if score $mode settings matches 0 run setblock -10 92 24 minecraft:smooth_stone_slab

execute if score $mode settings matches 0 run scoreboard players remove $grid_size settings 1
execute if score $mode settings matches 0 run function options:size/add_size
return 1