##Called when the ravager is meant to attack.
execute if score $attack_id boss matches 1 as @e[type=elder_guardian,tag=boss] run function game:boss/fight/guardian/track/start
execute if score $attack_id boss matches 2 run function game:boss/fight/guardian/floor/start
execute if score $attack_id boss matches 3 run function game:boss/fight/guardian/toss/start
execute if score $attack_id boss matches 4 run function game:boss/fight/guardian/circle/start
##Facing a random player
execute as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game,tag=in_boss_room]