# called when we drink a potion
advancement revoke @s only game:drink_health_potion
tag @s add temp
effect give @a[tag=playing,tag=!temp] instant_health 1 0 true
tag @s remove temp