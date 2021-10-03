##Called to scale boss health.

execute store result score $calculate calculate if entity @a[tag=playing]
scoreboard players operation $calculate calculate *= $100 number
scoreboard players operation @s enemy_health += $calculate calculate