# called for intro text

scoreboard players add @s intro_text 1
title @s[scores={intro_text=2}] title [{"text":"Welcome to...","color":"gray","italic":true,"underlined":true}]




title @s[scores={intro_text=2}] title [{"text":"Welcome to...","color":"gray","italic":true,"underlined":true}]

title @s[scores={intro_text=80}] subtitle [{"text":"Dungeon","obfuscated":false,"bold":true,"color":"dark_green"}]


title @s[scores={intro_text=95}] subtitle [{"text":"Dungeon","obfuscated":false,"bold":true,"color":"dark_green"},{"text":" of","obfuscated":false,"bold":true,"color":"white"}]

title @s[scores={intro_text=105}] subtitle [{"text":"Dungeon","obfuscated":false,"bold":true,"color":"dark_green"},{"text":" of the","obfuscated":false,"bold":true,"color":"white"}]
 
title @s[scores={intro_text=130}] subtitle [{"text":"Dungeon","obfuscated":false,"bold":true,"color":"dark_green"},{"text":" of the ","obfuscated":false,"bold":true,"color":"white"},{"text":"Arbalist ","obfuscated":false,"bold":true,"color":"gold"}]


# sounds
playsound minecraft:block.chest.close master @s[scores={intro_text=73}] ~ ~ ~ 1 0
playsound minecraft:block.iron_trapdoor.open master @s[scores={intro_text=80}] ~ ~ ~ 1 0


playsound minecraft:item.crossbow.loading_start master @s[scores={intro_text=105}] ~ ~ ~ 1 0.75
playsound minecraft:item.axe.strip master @s[scores={intro_text=105}] ~ ~ ~ 1 0.75



playsound minecraft:item.crossbow.shoot master @s[scores={intro_text=130}] ~ ~ ~ 1 1


playsound minecraft:entity.zombie.death master @s[scores={intro_text=138}] ~ ~ ~ 1 0

execute if score @s intro_text matches 138 run summon lightning_bolt -11 119 182

playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0
playsound minecraft:ambient.basalt_deltas.mood master @s[scores={intro_text=138}] ~ ~ ~ 0.5 0

effect clear @s[scores={intro_text=140}] darkness


playsound minecraft:block.note_block.hat master @s[scores={intro_text=80}] ~ ~ ~ 0.3 0.6
playsound minecraft:block.note_block.hat master @s[scores={intro_text=95}] ~ ~ ~ 0.3 0.6
playsound minecraft:block.note_block.hat master @s[scores={intro_text=105}] ~ ~ ~ 0.3 0.6
playsound minecraft:block.note_block.hat master @s[scores={intro_text=130}] ~ ~ ~ 0.3 0.6

execute if score @s intro_text matches 210 run function lobby:intro_text/end