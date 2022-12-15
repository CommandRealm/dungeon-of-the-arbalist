##Called to create the purcahsable crossbow indicator.
summon marker 4984 82 86 {Tags:["doorway","die_between_games","crossbow_purchasable","openable"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 500
execute positioned 4984 82 86 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

tag @e[type=marker,tag=doorway] add raycast

##Updating name
execute as @e[type=marker,tag=doorway] at @s run function game:door/update_name
