##called to check stat boosts


execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{id:"minecraft:red_dye",components:{"minecraft:custom_data":{stat_boost:1b}}}]}] at @s unless entity @s[scores={booster_delay=1..}] run function game:mechanics/stat_boosts/use_health

execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{id:"minecraft:orange_dye",components:{"minecraft:custom_data":{stat_boost:1b}}}]}] at @s run function game:mechanics/stat_boosts/use_quiver

execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{id:"minecraft:yellow_dye",components:{"minecraft:custom_data":{stat_boost:1b}}}]}] at @s run function game:mechanics/stat_boosts/use_looting

execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{id:"minecraft:lime_dye",components:{"minecraft:custom_data":{stat_boost:1b}}}]}] at @s run function game:mechanics/stat_boosts/use_revive

execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{id:"minecraft:light_blue_dye",components:{"minecraft:custom_data":{stat_boost:1b}}}]}] at @s run function game:mechanics/stat_boosts/use_speed

execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{id:"minecraft:purple_dye",components:{"minecraft:custom_data":{stat_boost:1b}}}]}] at @s run function game:mechanics/stat_boosts/use_damage
return 1