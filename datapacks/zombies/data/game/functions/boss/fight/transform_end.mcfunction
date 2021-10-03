##called to end the transform.
scoreboard players set $cooldown boss 100
execute as @e[tag=boss] at @s run data modify entity @s Invulnerable set value 0b
execute as @e[tag=boss,type=!elder_guardian] at @s run data modify entity @s NoAI set value 0b
execute as @e[tag=boss,type=!elder_guardian] at @s run data modify entity @s NoGravity set value 0b
execute as @e[tag=boss] at @s run data modify entity @s Fire set value 0s
scoreboard players set $phase boss 2

