##Called to create a shop


##Creating the items
execute as @e[type=area_effect_cloud,distance=..6,tag=shop_item_point,limit=5,sort=nearest] at @s run function game:default/shop_generation/create_random_item


##Creating the shopkeeper
function game:default/shop_generation/create_shopkeeper


##killing ourself
kill @s