# called to refill the shop (called by the shopkeeper)

# deleting the item
execute as @e[type=minecraft:item,distance=..6,tag=shop_item,sort=nearest,limit=5] at @s run function game:shops/refill/delete_item

# particle sounds and msg
execute at @e[type=minecraft:marker,distance=..6,tag=shop_item_point,sort=nearest,limit=5] run particle minecraft:item{item:"minecraft:spruce_planks"} ~ ~0.1 ~ 0 0 0 0.25 25
execute at @e[type=minecraft:marker,distance=..6,tag=shop_item_point,sort=nearest,limit=5] run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.13 0

execute as @a[tag=playing] at @s run playsound minecraft:entity.camel.dash_ready master @s ~ ~ ~ 1 0

# getting new ones
execute as @e[type=minecraft:marker,distance=..6,tag=shop_item_point,sort=nearest,limit=5] at @s run function game:default/shop_generation/create_random_item


return 1