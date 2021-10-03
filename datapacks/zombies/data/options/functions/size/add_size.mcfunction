setblock -9 90 24 air
playsound minecraft:ui.button.click master @s
scoreboard players add $grid_size settings 1
execute if score $grid_size settings matches 2.. run scoreboard players set $grid_size settings 0
execute if score $grid_size settings matches ..-1 run scoreboard players set $grid_size settings 1

execute if score $grid_size settings matches 0 run setblock -9 90 24 oak_wall_sign[facing=east]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Size:","color":"dark_green","bold":true}',Text3:'{"text":"Small","color":"dark_green"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:size/click_size"}}'}
execute if score $grid_size settings matches 1 run setblock -9 90 24 oak_wall_sign[facing=east]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Size:","color":"dark_green","bold":true}',Text3:'{"text":"Large","color":"green"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:size/click_size"}}'}


particle minecraft:cloud -10 65.5 24 0 0 0 0.05 10

kill @e[tag=display_size,type=armor_stand]
execute if score $grid_size settings matches 0 run summon armor_stand -10 90.6 24 {DisabledSlots:2039583,Tags:["display_size","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:light_gray_wool",Count:1b}]}
execute if score $grid_size settings matches 1 run summon armor_stand -10 89.825 24 {DisabledSlots:2039583,Tags:["display_size","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:light_gray_wool",Count:1b}]}
