##Called when area_2 is opened

tag @e[type=marker,tag=area_5d] add unlocked
tag @e[type=marker,tag=area_5d,sort=random,limit=1] add temporary_tag
function game:enemy/spawn_enemy

##Upgrade
execute positioned 3079 91.5 192.0 run function game:mechanics/upgrade/create/fire_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
execute if block 3105 90 189 oak_planks unless entity @e[type=marker,x=3105,y=90,z=189,tag=doorway,distance=..5] run summon marker 3105 90 189.0 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute as @e[type=marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment


tag @e[type=marker,tag=doorway] add raycast

##Updating name
execute as @e[type=marker,tag=doorway] at @s run function game:door/update_name

