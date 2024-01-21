# called for intro text

scoreboard players add @s intro_text 1
title @s[scores={intro_text=2}] title [{"text":"Welcome to...","color":"gray","italic":true,"underlined":true}]




title @s[scores={intro_text=2}] title [{"text":"Welcome to...","color":"gray","italic":true,"underlined":true}]

title @s[scores={intro_text=80}] subtitle [{"text":"Volition","obfuscated":false,"bold":true,"color":"#61369c"}]


title @s[scores={intro_text=95}] subtitle [{"text":"Volition","obfuscated":false,"bold":true,"color":"#61369c"},{"text":" of","obfuscated":false,"bold":true,"color":"white"}]

title @s[scores={intro_text=105}] subtitle [{"text":"Volition","obfuscated":false,"bold":true,"color":"#61369c"},{"text":" of the","obfuscated":false,"bold":true,"color":"white"}]
 
title @s[scores={intro_text=130}] subtitle [{"text":"Volition","obfuscated":false,"bold":true,"color":"#61369c"},{"text":" of the ","obfuscated":false,"bold":true,"color":"white"},{"text":"Arbalist ","obfuscated":false,"bold":true,"color":"gold"}]

execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[scores={intro_text=130}] only advancements:volition/root
tellraw @s[scores={intro_text=130}] [{"text":"Volition","obfuscated":false,"bold":true,"color":"#61369c"},{"text":" has begun. New enemies will now appear in the dungeon.","color":"gray"}]

# sounds
playsound minecraft:block.chest.close master @s[scores={intro_text=73}] ~ ~ ~ 1 0
playsound minecraft:block.iron_trapdoor.open master @s[scores={intro_text=80}] ~ ~ ~ 1 0


playsound minecraft:item.crossbow.loading_start master @s[scores={intro_text=105}] ~ ~ ~ 1 0.75
playsound minecraft:item.axe.strip master @s[scores={intro_text=105}] ~ ~ ~ 1 0.75



playsound minecraft:item.crossbow.shoot master @s[scores={intro_text=130}] ~ ~ ~ 1 1


playsound minecraft:entity.zombie.death master @s[scores={intro_text=138}] ~ ~ ~ 1 0


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


playsound minecraft:block.note_block.hat master @s[scores={intro_text=80}] ~ ~ ~ 0.3 0.6
playsound minecraft:block.note_block.hat master @s[scores={intro_text=95}] ~ ~ ~ 0.3 0.6
playsound minecraft:block.note_block.hat master @s[scores={intro_text=105}] ~ ~ ~ 0.3 0.6
playsound minecraft:block.note_block.hat master @s[scores={intro_text=130}] ~ ~ ~ 0.3 0.6

execute if score @s intro_text matches 210 run function lobby:intro_text/end