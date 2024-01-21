setblock 39 86 32 air
playsound minecraft:ui.button.click master @s
scoreboard players add $random_crossbow modifiers 1
execute if score $random_crossbow modifiers matches 2.. run scoreboard players set $random_crossbow modifiers 0
execute if score $random_crossbow modifiers matches ..-1 run scoreboard players set $random_crossbow modifiers 1

execute if score $random_crossbow modifiers matches 0 run setblock 39 86 32 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Random","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"crossbows:","color":"aqua","bold":true}', '[{"text":"Disabled ","color":"red"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/random_crossbow/click"}}'], has_glowing_text: false, color: "black"}}
execute if score $random_crossbow modifiers matches 1 run setblock 39 86 32 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Random","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"crossbows:","color":"aqua","bold":true}', '[{"text":"Enabled ","color":"green"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/random_crossbow/click"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 39 87.5 33 0 0 0 0.05 10

kill @e[tag=display_random_crossbow,type=armor_stand]
execute if score $random_crossbow modifiers matches 0 run summon armor_stand 39 86.6 33 {DisabledSlots:2039583,Tags:["display_random_crossbow","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_deepslate",Count:1b}]}
execute if score $random_crossbow modifiers matches 1 run summon armor_stand 39 86.6 33 {DisabledSlots:2039583,Tags:["display_random_crossbow","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:verdant_froglight",Count:1b}]}
