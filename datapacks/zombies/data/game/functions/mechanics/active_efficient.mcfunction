# main function that is called twice a second

# counting shopkeepers and comparing it to the previous tick
execute store result score $enemy_shopkeepers count if entity @e[tag=shopkeeper,team=enemy]
execute unless score $enemy_shopkeepers count = $last_enemy_shopkeepers count as @e[type=item,tag=shop_item,scores={id=1..}] at @s run function game:shops/shopkeeper/steal/check_ids
execute store result score $last_enemy_shopkeepers count if entity @e[tag=shopkeeper,team=enemy]


# particles for free items
execute at @e[type=item,tag=free_shop_item] run function game:shops/shopkeeper/steal/free_item_effects

# seeing if the player is in a room with an unangered shopkeeper
execute as @a[tag=playing,team=game,gamemode=adventure,tag=anger_shopkeepers] at @s at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 if entity @s[dx=31,dy=31,dz=31] as @e[tag=shopkeeper,team=!enemy,dx=31,dy=31,dz=31] at @s run function game:shops/shopkeeper/steal/convert_due_to_proximity

# rescheduling function
schedule function game:mechanics/active_efficient 10t