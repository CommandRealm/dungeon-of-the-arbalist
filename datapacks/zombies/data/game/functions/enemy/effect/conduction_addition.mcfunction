##Conduction crossbow additions

##adding damage
execute if score @p[tag=player_who_hit_enemy] streak matches 1 run scoreboard players add @s calculate_2 10
execute if score @p[tag=player_who_hit_enemy] streak matches 2 run scoreboard players add @s calculate_2 20
execute if score @p[tag=player_who_hit_enemy] streak matches 3 run scoreboard players add @s calculate_2 30
execute if score @p[tag=player_who_hit_enemy] streak matches 4 run scoreboard players add @s calculate_2 40
execute if score @p[tag=player_who_hit_enemy] streak matches 5.. run scoreboard players add @s calculate_2 50

scoreboard players add @p[tag=player_who_hit_enemy] streak 1
execute as @p[tag=player_who_hit_enemy,scores={streak=1}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
execute as @p[tag=player_who_hit_enemy,scores={streak=2}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.6
execute as @p[tag=player_who_hit_enemy,scores={streak=3}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.7
execute as @p[tag=player_who_hit_enemy,scores={streak=4}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.8
execute as @p[tag=player_who_hit_enemy,scores={streak=5..}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.9