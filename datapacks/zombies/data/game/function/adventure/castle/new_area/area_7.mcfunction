##Called when area_7 is opened

tag @e[type=minecraft:marker,tag=area_7] add unlocked
tag @e[type=minecraft:marker,tag=area_7,sort=random,limit=4] add temporary_tag
function game:enemy/spawn_enemy







##Upgrade
execute positioned 5067 92 5 run function game:mechanics/upgrade/create/earth_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon minecraft:marker 5089 90 -23 {Tags:["doorway","die_between_games","east_west","default_door"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 400
execute positioned 5089 90 -23 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s run function game:door/get_price_increment


tag @e[type=minecraft:marker,tag=doorway] add raycast

##Updating name
execute as @e[type=minecraft:marker,tag=doorway] at @s run function game:door/update_name


return 1