##Called when the tnt explodes


##Dealing damage to enemies.
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Tags:["die_between_games","temporary_tag","on_death_timer","whirlpool"],Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete_powder",count:1}]}

scoreboard players set @e[type=minecraft:armor_stand,tag=temporary_tag] death_timer 200
tag @e[type=minecraft:armor_stand,tag=temporary_tag] remove temporary_tag

##sound and particles
particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 0 0 0 0.25 50 force @a
playsound minecraft:entity.generic.splash master @s ~ ~ ~ 1 1.75
return 1