##Called when area_2 is opened

tag @e[type=marker,tag=area_3] add unlocked
tag @e[type=marker,tag=area_3,sort=random,limit=2] add temporary_tag
function game:enemy/spawn_enemy

##Upgrade
execute positioned 4953 94.5 18 run function game:mechanics/upgrade/create/darkness_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot

