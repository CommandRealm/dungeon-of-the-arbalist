##called to check if the player who shot us had damage.


tag @s add hit_enemy

execute store result score @s calculate run data get entity @s ActiveEffects[{Id:30}].Amplifier 1


execute as @a[tag=playing] at @s if score @s id = @e[tag=hit_enemy,sort=nearest,limit=1] calculate run tag @s add temporary_tag

execute if entity @a[tag=temporary_tag,scores={boost_damage=1..}] run tag @s add hit_by_damage_booster
execute as @a[tag=temporary_tag,scores={boost_damage=1..}] run scoreboard players operation $b_damage calculate = @s b_damage

tag @s remove hit_enemy
tag @a remove temporary_tag