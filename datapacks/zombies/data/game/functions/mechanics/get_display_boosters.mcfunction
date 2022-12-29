# called to give us display booster

kill @e[type=item,distance=..5,nbt={display_booster:1b}]
clear @s #minecraft:boosters{display_booster:1b}

loot replace entity @s inventory.3 loot game:display_boosters/health
loot replace entity @s inventory.4 loot game:display_boosters/quiver
loot replace entity @s inventory.5 loot game:display_boosters/looting

loot replace entity @s inventory.12 loot game:display_boosters/revive
loot replace entity @s inventory.13 loot game:display_boosters/speed
loot replace entity @s inventory.14 loot game:display_boosters/damage