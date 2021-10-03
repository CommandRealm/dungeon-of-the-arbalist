##Called when area_2 is opened

tag @e[type=marker,tag=area_9] add unlocked
tag @e[type=marker,tag=area_9,sort=random,limit=3] add temporary_tag
function game:enemy/spawn_enemy

function game:enemy/pug_golem/summon


##Upgrade
execute positioned 5136 89.0 -17 run function game:mechanics/upgrade/create/nature_upgrade_spot
execute as @e[type=area_effect_cloud,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot


##Marking doorways.
summon area_effect_cloud 5135 88 13 {Tags:["doorway","die_between_games","default_door"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute positioned 5135 88 13 as @e[type=area_effect_cloud,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment



tag @e[type=area_effect_cloud,tag=doorway] add raycast

##Updating name
execute as @e[type=area_effect_cloud,tag=doorway] at @s run function game:door/update_name

