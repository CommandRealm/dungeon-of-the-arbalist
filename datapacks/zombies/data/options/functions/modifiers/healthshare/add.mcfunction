setblock 43 86 32 air
playsound minecraft:ui.button.click master @s
scoreboard players add $healthshare modifiers 1
execute if score $healthshare modifiers matches 2.. run scoreboard players set $healthshare modifiers 0
execute if score $healthshare modifiers matches ..-1 run scoreboard players set $healthshare modifiers 1

execute if score $healthshare modifiers matches 0 run setblock 43 86 32 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Players","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"share health:","color":"aqua","bold":true}', '[{"text":"Disabled ","color":"red"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/healthshare/click"}}'], has_glowing_text: false, color: "black"}}
execute if score $healthshare modifiers matches 1 run setblock 43 86 32 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Players","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"share health:","color":"aqua","bold":true}', '[{"text":"Enabled ","color":"green"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/healthshare/click"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 43 87.5 33 0 0 0 0.05 10

kill @e[tag=display_healthshare,type=armor_stand]
execute if score $healthshare modifiers matches 0 run summon armor_stand 43 86.6 33 {DisabledSlots:2039583,Tags:["display_healthshare","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_deepslate",Count:1b}]}
execute if score $healthshare modifiers matches 1 run summon armor_stand 43 86.6 33 {DisabledSlots:2039583,Tags:["display_healthshare","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:verdant_froglight",Count:1b}]}
