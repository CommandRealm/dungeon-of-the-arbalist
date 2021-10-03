##Called to see if we should take damage.
execute if data entity @s ActiveEffects[{Id:26b}] unless data entity @s ActiveEffects[{Id:10b}] run function game:shops/shopkeeper/take_damage