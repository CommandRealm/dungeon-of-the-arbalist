##Called when area_6b is opened

tag @e[type=minecraft:marker,tag=area_6b] add unlocked





##Upgrade
execute positioned 3105 73.5 94 run function game:mechanics/upgrade/create/lightning_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot


clear @a[tag=playing] minecraft:tripwire_hook[minecraft:custom_data={key:"storage"}]
return 1