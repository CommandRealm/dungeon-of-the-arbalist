setblock 37 86 30 air
playsound minecraft:ui.button.click master @s
scoreboard players add $speedrun modifiers 1
execute if score $speedrun modifiers matches 2.. run scoreboard players set $speedrun modifiers 0
execute if score $speedrun modifiers matches ..-1 run scoreboard players set $speedrun modifiers 1

execute if score $speedrun modifiers matches 0 run setblock 37 86 30 oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Open doors","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"any time:","color":"aqua","bold":true}', '[{"text":"Disabled ","color":"red"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/speedrun/click"}}'], has_glowing_text: false, color: "black"}}
execute if score $speedrun modifiers matches 1 run setblock 37 86 30 oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Open doors","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"any time:","color":"aqua","bold":true}', '[{"text":"Enabled ","color":"green"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/speedrun/click"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 37 87.5 29 0 0 0 0.05 10

kill @e[tag=display_speedrun,type=armor_stand]
execute if score $speedrun modifiers matches 0 run summon armor_stand 37 86.6 29 {DisabledSlots:2039583,Tags:["display_speedrun","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_deepslate",Count:1b}]}
execute if score $speedrun modifiers matches 1 run summon armor_stand 37 86.6 29 {DisabledSlots:2039583,Tags:["display_speedrun","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:verdant_froglight",Count:1b}]}
