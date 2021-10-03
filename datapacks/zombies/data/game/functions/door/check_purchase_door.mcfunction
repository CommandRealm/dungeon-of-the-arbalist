##Called to make sure this isn't the tutorial.
execute if score $mode settings matches 1.. run scoreboard players reset @s drop_key
execute unless entity @s[x=0,y=66,z=0,distance=..500] run function game:door/purchase_door
execute if entity @s[x=0,y=66,z=0,distance=..500] run function game:door/tutorial/purchase_door