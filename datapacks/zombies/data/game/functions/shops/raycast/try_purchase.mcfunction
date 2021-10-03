##Called to attempt to purchase the door.

execute unless score @s treasure >= @e[type=item,sort=nearest,limit=1,tag=shop_item] item_price run function game:shops/raycast/not_enough_treasure
execute if score @s treasure >= @e[type=item,sort=nearest,limit=1,tag=shop_item] item_price run function game:shops/raycast/purchase

##Resetting our score
scoreboard players reset @s try_purchase