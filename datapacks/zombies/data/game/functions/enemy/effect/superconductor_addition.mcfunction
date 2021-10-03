##Conduction crossbow additions

##adding damage
execute if score @p[tag=player_who_hit_enemy] streak matches 1 run scoreboard players add @s calculate_2 10
execute if score @p[tag=player_who_hit_enemy] streak matches 2 run scoreboard players add @s calculate_2 15
execute if score @p[tag=player_who_hit_enemy] streak matches 3 run scoreboard players add @s calculate_2 20
execute if score @p[tag=player_who_hit_enemy] streak matches 4 run scoreboard players add @s calculate_2 25
execute if score @p[tag=player_who_hit_enemy] streak matches 5 run scoreboard players add @s calculate_2 30
execute if score @p[tag=player_who_hit_enemy] streak matches 6 run scoreboard players add @s calculate_2 40
execute if score @p[tag=player_who_hit_enemy] streak matches 7 run scoreboard players add @s calculate_2 50
execute if score @p[tag=player_who_hit_enemy] streak matches 8 run scoreboard players add @s calculate_2 60
execute if score @p[tag=player_who_hit_enemy] streak matches 9 run scoreboard players add @s calculate_2 65
execute if score @p[tag=player_who_hit_enemy] streak matches 10.. run scoreboard players add @s calculate_2 70

execute as @p[tag=player_who_hit_enemy,scores={streak=1}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
execute as @p[tag=player_who_hit_enemy,scores={streak=2}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.6
execute as @p[tag=player_who_hit_enemy,scores={streak=3}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.7
execute as @p[tag=player_who_hit_enemy,scores={streak=4}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.8
execute as @p[tag=player_who_hit_enemy,scores={streak=5}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.9
execute as @p[tag=player_who_hit_enemy,scores={streak=6}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.0
execute as @p[tag=player_who_hit_enemy,scores={streak=7}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.1
execute as @p[tag=player_who_hit_enemy,scores={streak=8}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.2
execute as @p[tag=player_who_hit_enemy,scores={streak=9}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.3
execute as @p[tag=player_who_hit_enemy,scores={streak=10..}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.4

scoreboard players add @p[tag=player_who_hit_enemy] streak 1