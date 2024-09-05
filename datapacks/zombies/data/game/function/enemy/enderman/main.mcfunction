execute as @e[type=minecraft:zombie,tag=enderman_miniboss,tag=!enderman_cooldown] at @s unless entity @a[gamemode=adventure,distance=..7,team=game] run function game:enemy/enderman/hurt
execute as @e[type=minecraft:zombie,tag=enderman_miniboss,tag=enderman_cooldown] at @s run function game:enemy/enderman/cooldown
return 1