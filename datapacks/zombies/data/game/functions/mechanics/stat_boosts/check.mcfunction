##called to check stat boosts


execute as @a[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:red_dye",tag:{stat_boost:1b}}]},scores={boost_health=..4}] at @s unless entity @s[scores={booster_delay=1..}] run function game:mechanics/stat_boosts/use_health

execute as @a[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:orange_dye",tag:{stat_boost:1b}}]},scores={boost_quiver=..4}] at @s run function game:mechanics/stat_boosts/use_quiver

execute as @a[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:yellow_dye",tag:{stat_boost:1b}}]},scores={boost_treasure=..4}] at @s run function game:mechanics/stat_boosts/use_looting

execute as @a[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:lime_dye",tag:{stat_boost:1b}}]},scores={boost_revive=..4}] at @s run function game:mechanics/stat_boosts/use_revive

execute as @a[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:light_blue_dye",tag:{stat_boost:1b}}]},scores={boost_speed=..4}] at @s run function game:mechanics/stat_boosts/use_speed

execute as @a[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:purple_dye",tag:{stat_boost:1b}}]},scores={boost_damage=..4}] at @s run function game:mechanics/stat_boosts/use_damage