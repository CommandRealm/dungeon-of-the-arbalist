#Add scoreboard for timer

scoreboard players set $wave game 8
scoreboard objectives add pug_illagers dummy {"text":"Timer for Pug's Illagers Miniboss","type":"text"}

#Summon enemies
summon minecraft:illusioner 4964 105.5 70 {Rotation:[180.0f],NoAI:1b,Tags:["miniboss","pug_illagers_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","pug_illagers_cutscene","no_boosters"],Invulnerable:1b,CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",count:1},{id:"minecraft:book",components:{"minecraft:enchantment_glint_override":1b},count:1}]}
summon minecraft:evoker 4962 105.5 70 {Rotation:[180.0f],NoAI:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:iron_boots",components:{"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{},{},{id:"minecraft:stone_button",count:1}],Tags:["miniboss","die_between_games","enemy","pug_illagers_miniboss","miniboss_name","pug_illagers_cutscene","needs_initialization","no_boosters"],CustomNameVisible:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.29d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.0d},{id:"minecraft:generic.knockback_resistance",base:1.0d}]}

#Set health
scoreboard players set @e[tag=pug_illagers_miniboss,tag=needs_initialization] enemy_health 300
execute as @e[tag=pug_illagers_miniboss,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Dangerous Duo","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[tag=pug_illagers_miniboss] run attribute @s minecraft:generic.follow_range base set 1024
return 1