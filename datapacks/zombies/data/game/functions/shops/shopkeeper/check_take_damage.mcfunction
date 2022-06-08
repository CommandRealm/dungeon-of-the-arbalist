##Called to see if we should take damage.
execute if data entity @s ActiveEffects[{Id:26}] unless data entity @s ActiveEffects[{Id:10}] run function game:shops/shopkeeper/take_damage