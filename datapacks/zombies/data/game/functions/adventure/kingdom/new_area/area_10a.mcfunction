##Called when area_10a is opened






clone 3128 60 142 3130 63 145 3128 70 142


##Marking doorways.
summon marker 3129 70 143 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 50
execute positioned 3129 70 143 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment



tag @e[type=marker,tag=doorway] add raycast

##Updating name
execute as @e[type=marker,tag=doorway] at @s run function game:door/update_name