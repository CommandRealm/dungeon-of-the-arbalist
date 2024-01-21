##Called when a player takes damage.

scoreboard players reset @s damage_taken

# if this is a modifier run additional function
execute if score $healthshare modifiers matches 1 run function game:modifiers/healthshare/take_damage

execute if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot"}]}] unless data entity @s ActiveEffects[{Id:10}] run function game:shops/items/lose_rabbits_foot