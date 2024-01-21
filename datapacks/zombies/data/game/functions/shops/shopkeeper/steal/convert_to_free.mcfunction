# called to convert this item to free
scoreboard players set @s item_price 0
scoreboard players set @s item_quantity 0

# removing id so it doesn't continue to check
scoreboard players reset @e[type=marker,sort=nearest,limit=1] id

# sound and particle
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 1.67
particle item gold_block ~ ~ ~ 0 0 0 0.5 15

# tag so that we can have a particle
tag @s add free_shop_item