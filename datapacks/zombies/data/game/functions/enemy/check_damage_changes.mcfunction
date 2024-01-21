##called to check if the player who shot us had damage.

tag @a remove temporary_tag
tag @s add hit_enemy
scoreboard players set $b_damage calculate 0

execute store result score @s calculate run data get entity @s active_effects[{id:"minecraft:dolphins_grace"}].amplifier 1


execute as @a[tag=playing] at @s if score @s id = @e[tag=hit_enemy,sort=nearest,limit=1] calculate run tag @s add temporary_tag

execute as @a[tag=temporary_tag] run scoreboard players operation $b_damage calculate = @s b_damage
execute as @a[tag=temporary_tag,scores={fake_strength=1..}] run scoreboard players add $b_damage calculate 100
execute if score $b_damage calculate matches 1.. run tag @s add hit_by_damage_booster

tag @s remove hit_enemy
tag @a remove temporary_tag