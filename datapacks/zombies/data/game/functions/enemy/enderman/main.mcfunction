execute as @e[tag=enderman_miniboss,type=zombie,tag=!enderman_cooldown] at @s unless entity @a[gamemode=adventure,team=game,distance=..7] run function game:enemy/enderman/hurt
execute as @e[tag=enderman_miniboss,type=zombie,tag=enderman_cooldown] at @s run function game:enemy/enderman/cooldown