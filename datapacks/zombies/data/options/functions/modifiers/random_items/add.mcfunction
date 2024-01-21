setblock 37 86 32 air
playsound minecraft:ui.button.click master @s
scoreboard players add $random_items modifiers 1
execute if score $random_items modifiers matches 2.. run scoreboard players set $random_items modifiers 0
execute if score $random_items modifiers matches ..-1 run scoreboard players set $random_items modifiers 1

execute if score $random_items modifiers matches 0 run setblock 37 86 32 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Enemies drop","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"random items:","color":"aqua","bold":true}', '[{"text":"Disabled ","color":"red"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/random_items/click"}}'], has_glowing_text: false, color: "black"}}
execute if score $random_items modifiers matches 1 run setblock 37 86 32 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Enemies drop","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"random items:","color":"aqua","bold":true}', '[{"text":"Enabled ","color":"green"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/random_items/click"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 37 87.5 33 0 0 0 0.05 10

kill @e[tag=display_random_items,type=armor_stand]
execute if score $random_items modifiers matches 0 run summon armor_stand 37 86.6 33 {DisabledSlots:2039583,Tags:["display_random_items","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_deepslate",Count:1b}]}
execute if score $random_items modifiers matches 1 run summon armor_stand 37 86.6 33 {DisabledSlots:2039583,Tags:["display_random_items","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:verdant_froglight",Count:1b}]}
