##Called when area_6b is opened

tag @e[type=marker,tag=area_6b] add unlocked





##Upgrade
execute positioned 3105 73.5 94 run function game:mechanics/upgrade/create/lightning_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot


clear @a[tag=playing] tripwire_hook{key:"storage"}