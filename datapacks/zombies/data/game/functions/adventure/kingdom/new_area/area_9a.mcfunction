##Called when area_2 is opened

tag @e[type=marker,tag=area_9a] add unlocked
tag @e[type=marker,tag=area_9a,sort=random,limit=1] add temporary_tag
function game:enemy/spawn_enemy


##Upgrade
execute positioned 2993 92.5 182 run function game:mechanics/upgrade/create/ice_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot

