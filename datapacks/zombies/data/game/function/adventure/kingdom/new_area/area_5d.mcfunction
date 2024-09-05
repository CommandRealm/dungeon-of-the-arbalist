##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_5d] add unlocked
tag @e[type=minecraft:marker,tag=area_5d,sort=random,limit=1] add temporary_tag
function game:enemy/spawn_enemy

##Upgrade
execute positioned 3079 91.5 192.0 run function game:mechanics/upgrade/create/fire_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
execute if block 3105 90 189 minecraft:oak_planks unless entity @e[type=minecraft:marker,x=3105,y=90,z=189,distance=..5,tag=doorway] run summon minecraft:marker 3105 90 189.0 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment


tag @e[type=minecraft:marker,tag=doorway] add raycast

##Updating name
execute as @e[type=minecraft:marker,tag=doorway] at @s run function game:door/update_name


return 1