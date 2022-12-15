##Called when area_6b is opened

tag @e[type=marker,tag=area_6d] add unlocked





##Upgrade
execute positioned 3054 72.5 107 run function game:mechanics/upgrade/create/metal_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot


