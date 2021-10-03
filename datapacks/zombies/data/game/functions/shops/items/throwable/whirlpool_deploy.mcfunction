##Called when the tnt explodes


##Dealing damage to enemies.
summon armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Tags:["die_between_games","temporary_tag","on_death_timer","whirlpool"],Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete_powder",Count:1b}]}

scoreboard players set @e[type=armor_stand,tag=temporary_tag] death_timer 200
tag @e[type=armor_stand,tag=temporary_tag] remove temporary_tag

##sound and particles
particle block water ~ ~ ~ 0 0 0 0.25 50 force @a
playsound minecraft:entity.generic.splash master @s ~ ~ ~ 1 1.75