#Add scoreboard for forge miniboss timer
scoreboard objectives add cpt_forge_timer dummy
scoreboard players set $chargeup cpt_forge_timer 0
scoreboard players set $shooting cpt_forge_timer 0
scoreboard players set $cooldown cpt_forge_timer 0

scoreboard players set $wave game 8

summon zombie_villager 2994 81 62 {HandItems:[{id:"minecraft:shears",Count:1b},{}],Silent:1b,Tags:["miniboss","cpt_forge_miniboss","die_between_games","needs_initialization","no_boosters","enemy","miniboss_name","cpt_cooldown"],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b}],CustomNameVisible:1b,VillagerData:{profession:"minecraft:armorer","level":5,"type":"minecraft:jungle"}}

#Set health
scoreboard players set @e[type=zombie_villager,tag=cpt_forge_miniboss,tag=needs_initialization] enemy_health 650
execute as @e[type=zombie_villager,tag=needs_initialization] at @s run function game:enemy/initialize

execute as @e[type=zombie_villager,tag=cpt_forge_miniboss] run attribute @s generic.follow_range base set 1024

execute as @e[type=zombie_villager,tag=cpt_forge_miniboss] run attribute @s generic.knockback_resistance base set 1.0


##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Blacksmith","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

scoreboard players set $forge_boss game 1