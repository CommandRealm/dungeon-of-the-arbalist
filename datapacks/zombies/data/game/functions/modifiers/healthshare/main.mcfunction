# called when healthshare is active

# if we drink a potion
execute if entity @s[advancements={game:drink_health_potion=true}] run function game:modifiers/healthshare/drink_potion


# storing last health
execute store result score @s last_health run data get entity @s Health