##Called when a player takes damage.

scoreboard players reset @s damage_taken
execute if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot"}]}] run function game:shops/items/lose_rabbits_foot