##called to check if the player who shot us had luck.


tag @s add hit_enemy

execute store result score @s calculate run data get entity @s ActiveEffects[{Id:30}].Amplifier 1


execute as @a[tag=playing] at @s if score @s id = @e[tag=hit_enemy,sort=nearest,limit=1] calculate run tag @s add temporary_tag

execute if entity @a[tag=temporary_tag,nbt={Inventory:[{id:"minecraft:rabbit_foot"}]}] run scoreboard players add $pre_rng calculate 10
execute if entity @a[tag=temporary_tag,nbt={Inventory:[{id:"minecraft:rabbit_foot"}]}] run scoreboard players operation @s calculate_2 = $pre_rng calculate

tag @a remove temporary_tag