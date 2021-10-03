##Called to attempt to purchase the door.

execute unless score $mode settings matches 0 run scoreboard players reset @s drop_key

execute unless entity @s[scores={drop_key=1..}] unless score @s treasure >= @e[type=area_effect_cloud,tag=raycast,tag=doorway,sort=nearest,limit=1] price_increment run function game:default/door/not_enough_treasure
execute unless entity @s[scores={drop_key=1..}] if score @s treasure >= @e[type=area_effect_cloud,tag=raycast,tag=doorway,sort=nearest,limit=1] price_increment run function game:door/check_purchase_door
##If we dropped a key
execute if entity @s[scores={drop_key=1..}] run function game:door/check_purchase_door