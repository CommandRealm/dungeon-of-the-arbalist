##Called to create a shop


##Creating the items
execute as @e[type=minecraft:marker,distance=..6,tag=shop_item_point,sort=nearest,limit=5] at @s run function game:default/shop_generation/create_random_item


##Creating the shopkeeper
function game:default/shop_generation/create_shopkeeper


##killing ourself
kill @s
return 1