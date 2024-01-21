setblock -8 90 22 air
playsound minecraft:ui.button.click master @s
scoreboard players add $modifiers settings 1
execute if score $modifiers settings matches 2.. run scoreboard players set $modifiers settings 0
execute if score $modifiers settings matches ..-1 run scoreboard players set $modifiers settings 1

execute if score $modifiers settings matches 0 run setblock -8 90 22 oak_wall_sign[facing=south]{front_text:{messages:['{"text":"","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"Modifiers:","color":"dark_green","bold":true}', '[{"text":"Disabled ","color":"red"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/click"}}'], has_glowing_text: false, color: "black"}}
execute if score $modifiers settings matches 1 run setblock -8 90 22 oak_wall_sign[facing=south]{front_text:{messages:['{"text":"","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"Modifiers:","color":"dark_green","bold":true}', '[{"text":"Enabled ","color":"green"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:modifiers/click"}}'], has_glowing_text: false, color: "black"}}

execute if score $modifiers settings matches 1 run tellraw @a[x=-8,y=90,z=22,distance=..5.5] [{"text":"⚠ ","color":"yellow"},{"text":"If a modifier is enabled, advancements, cosmetics, and statistics will be unchanging,","color":"red"}]
particle minecraft:cloud -8 91.5 21 0 0 0 0.05 10

kill @e[tag=display_modifiers,type=armor_stand]
execute if score $modifiers settings matches 0 run summon armor_stand -8 90.6 21 {DisabledSlots:2039583,Tags:["display_modifiers","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_deepslate",Count:1b}]}
execute if score $modifiers settings matches 1 run summon armor_stand -8 90.6 21 {DisabledSlots:2039583,Tags:["display_modifiers","model"],Small:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:verdant_froglight",Count:1b}]}
