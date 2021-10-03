#Add scoreboard for timer

scoreboard players set $wave game 8
scoreboard objectives add pug_illagers dummy {"text":"Timer for Pug's Illagers Miniboss"}

#Summon enemies
summon illusioner 4964 105.5 70 {Rotation:[180f],NoAI:1b,Tags:["miniboss","pug_illagers_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","pug_illagers_cutscene","no_boosters"],Invulnerable:1b,CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:book",Count:1b,tag:{Enchantments:[{}]}}]}
summon minecraft:evoker 4962 105.5 70 {Rotation:[180f],NoAI:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.29d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["miniboss","die_between_games","enemy","pug_illagers_miniboss","miniboss_name","pug_illagers_cutscene","needs_initialization","no_boosters"],CustomNameVisible:1b}

#Set health
scoreboard players set @e[tag=pug_illagers_miniboss,tag=needs_initialization] enemy_health 300
execute as @e[tag=pug_illagers_miniboss,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Dangerous Duo","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[tag=pug_illagers_miniboss] run attribute @s generic.follow_range base set 1024