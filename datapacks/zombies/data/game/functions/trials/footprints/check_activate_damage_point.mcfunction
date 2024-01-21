# called to make sure the player isnt too close

execute positioned ~ ~1 ~ if entity @a[tag=temp,distance=..1.5] run tag @s add void
execute positioned ~ ~ ~ if entity @a[tag=temp,distance=..1.5] run tag @s add void
execute positioned ~ ~-1 ~ if entity @a[tag=temp,distance=..1.5] run tag @s add void


execute unless entity @s[tag=void] run function game:trials/footprints/activate_damage_point
scoreboard players set @s[tag=void] death_timer 200
tag @s remove void