setblock 43 86 30 air
playsound minecraft:ui.button.click master @s
scoreboard players add $bouncy_arrows modifiers 1
execute if score $bouncy_arrows modifiers matches 2.. run scoreboard players set $bouncy_arrows modifiers 0
execute if score $bouncy_arrows modifiers matches ..-1 run scoreboard players set $bouncy_arrows modifiers 1

execute if score $bouncy_arrows modifiers matches 0 run setblock 43 86 30 oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Arrows","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"bounce:","color":"aqua","bold":true}', '[{"text":"Disabled ","color":"red"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/bouncy_arrows/click"}}'], has_glowing_text: false, color: "black"}}
execute if score $bouncy_arrows modifiers matches 1 run setblock 43 86 30 oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Arrows","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"bounce:","color":"aqua","bold":true}', '[{"text":"Enabled ","color":"green"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/bouncy_arrows/click"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 43 87.5 29 0 0 0 0.05 10

kill @e[tag=display_bouncy_arrows,type=armor_stand]
execute if score $bouncy_arrows modifiers matches 0 run summon armor_stand 43 86.6 29 {DisabledSlots:2039583,Tags:["display_bouncy_arrows","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_deepslate",Count:1b}]}
execute if score $bouncy_arrows modifiers matches 1 run summon armor_stand 43 86.6 29 {DisabledSlots:2039583,Tags:["display_bouncy_arrows","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:verdant_froglight",Count:1b}]}
