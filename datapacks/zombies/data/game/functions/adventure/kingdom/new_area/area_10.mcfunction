##Called when area_2 is opened

tag @e[type=marker,tag=area_10] add unlocked
tag @e[type=marker,tag=area_10,sort=random,limit=4] add temporary_tag
function game:enemy/spawn_enemy








##Upgrade (this is in 2b but needed to be visible before 2b is opened.)
execute positioned 3062 43.5 159 run function game:mechanics/upgrade/create/earth_upgrade_spot
execute positioned 3090 51.5 205 run function game:mechanics/upgrade/create/nature_upgrade_spot
execute as @e[type=area_effect_cloud,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon area_effect_cloud 3096 45 179 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute positioned 3096 45 179 as @e[type=area_effect_cloud,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment



tag @e[type=area_effect_cloud,tag=doorway] add raycast

##Updating name
execute as @e[type=area_effect_cloud,tag=doorway] at @s run function game:door/update_name