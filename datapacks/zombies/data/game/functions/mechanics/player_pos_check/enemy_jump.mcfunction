# called to make the enemy jump

# storing our y pos
execute store result score @s calculate run data get entity @s Pos[1] 100

# subtracting y pos
scoreboard players operation $calculate calculate -= @s calculate

# applying score to our motion
execute store result entity @s Motion[1] double 0.0018 run scoreboard players get $calculate calculate

# resetting our jump score
scoreboard players set @s player_pos_check -35

# particles and sound
particle dust 1 0 0 1 ~ ~1 ~ 0.25 0.5 0.25 0 15
playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 1 1.8
