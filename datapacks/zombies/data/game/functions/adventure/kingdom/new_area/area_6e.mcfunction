##Called when area_6b is opened

tag @e[type=marker,tag=area_6e] add unlocked





##Upgrade
execute positioned 3162 80.5 192 run function game:mechanics/upgrade/create/lightning_upgrade_spot
execute as @e[type=area_effect_cloud,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot


