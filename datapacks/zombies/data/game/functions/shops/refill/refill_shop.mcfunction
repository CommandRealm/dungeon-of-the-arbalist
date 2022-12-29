# called to refill the shop (called by the shopkeeper)

# deleting the item
execute as @e[type=item,tag=shop_item,distance=..6,limit=5,sort=nearest] at @s run function game:shops/refill/delete_item

# particle sounds and msg
execute at @e[type=marker,distance=..6,tag=shop_item_point,limit=5,sort=nearest] run particle item spruce_planks ~ ~0.1 ~ 0 0 0 0.25 25
execute at @e[type=marker,distance=..6,tag=shop_item_point,limit=5,sort=nearest] run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.13 0

execute as @a[tag=playing] at @s run playsound minecraft:entity.camel.dash_ready master @s ~ ~ ~ 1 0

# getting new ones
execute as @e[type=marker,distance=..6,tag=shop_item_point,limit=5,sort=nearest] at @s run function game:default/shop_generation/create_random_item

