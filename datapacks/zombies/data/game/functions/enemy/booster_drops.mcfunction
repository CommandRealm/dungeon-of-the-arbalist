# called when something needs to drop 3 boosters
##Stat boost
execute store result score $rand random run loot insert 0 1 0 loot random:stats
function random:reset_chest
execute if score $starting_players game matches 1 if score $rand random matches 5 run scoreboard players remove $rand random 1

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 0 run loot spawn ~ ~ ~ loot game:shop_items/stats/health

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 1 run loot spawn ~ ~ ~ loot game:shop_items/stats/quiver

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 2 run loot spawn ~ ~ ~ loot game:shop_items/stats/looting

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 3 run loot spawn ~ ~ ~ loot game:shop_items/stats/damage

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 4 run loot spawn ~ ~ ~ loot game:shop_items/stats/speed

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 5 run loot spawn ~ ~ ~ loot game:shop_items/stats/revive

execute if score $difficulty settings matches 5.. run kill @e[type=item,distance=..2,nbt={Age:0s,Item:{id:"minecraft:red_dye",tag:{shop_item:1b}}}]
execute as @e[type=item,distance=..2,nbt={Age:0s,Item:{tag:{shop_item:1b}}}] at @s run data merge entity @s {Item:{tag:{shop_item:1b}}}


##Stat boost
execute store result score $rand random run loot insert 0 1 0 loot random:stats
function random:reset_chest
execute if score $starting_players game matches 1 if score $rand random matches 5 run scoreboard players remove $rand random 1

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 0 run loot spawn ~ ~ ~ loot game:shop_items/stats/health

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 1 run loot spawn ~ ~ ~ loot game:shop_items/stats/quiver

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 2 run loot spawn ~ ~ ~ loot game:shop_items/stats/looting

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 3 run loot spawn ~ ~ ~ loot game:shop_items/stats/damage

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 4 run loot spawn ~ ~ ~ loot game:shop_items/stats/speed

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 5 run loot spawn ~ ~ ~ loot game:shop_items/stats/revive

execute if score $difficulty settings matches 5.. run kill @e[type=item,distance=..2,nbt={Age:0s,Item:{id:"minecraft:red_dye",tag:{shop_item:1b}}}]
execute as @e[type=item,distance=..2,nbt={Age:0s,Item:{tag:{shop_item:1b}}}] at @s run data merge entity @s {Item:{tag:{shop_item:1b}}}

# miniboss chance for armor trim unlock
execute if entity @s[tag=miniboss,tag=!no_boosters] if score $difficulty settings matches 0.. run function game:enemy/miniboss_unlock_drops/check




##Stat boost
execute store result score $rand random run loot insert 0 1 0 loot random:stats
function random:reset_chest
execute if score $starting_players game matches 1 if score $rand random matches 5 run scoreboard players remove $rand random 1

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 0 run loot spawn ~ ~ ~ loot game:shop_items/stats/health

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 1 run loot spawn ~ ~ ~ loot game:shop_items/stats/quiver

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 2 run loot spawn ~ ~ ~ loot game:shop_items/stats/looting

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 3 run loot spawn ~ ~ ~ loot game:shop_items/stats/damage

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 4 run loot spawn ~ ~ ~ loot game:shop_items/stats/speed

execute if entity @s[tag=miniboss,tag=!no_boosters] if score $rand random matches 5 run loot spawn ~ ~ ~ loot game:shop_items/stats/revive

execute if score $difficulty settings matches 5.. run kill @e[type=item,distance=..2,nbt={Age:0s,Item:{id:"minecraft:red_dye",tag:{shop_item:1b}}}]

execute as @e[type=item,distance=..2,nbt={Age:0s,Item:{tag:{shop_item:1b}}}] at @s run data merge entity @s {Item:{tag:{shop_item:1b}}}
