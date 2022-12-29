# seeing if we have all four corners on a solid block


# checking corners of players
scoreboard players set @s player_pos_check 0
execute positioned ~0.25 ~ ~0.25 unless block ~ ~-1 ~ #minecraft:air_like run scoreboard players add @s player_pos_check 1
execute positioned ~-0.25 ~ ~0.25 unless block ~ ~-1 ~ #minecraft:air_like run scoreboard players add @s player_pos_check 1
execute positioned ~0.25 ~ ~-0.25 unless block ~ ~-1 ~ #minecraft:air_like run scoreboard players add @s player_pos_check 1
execute positioned ~-0.25 ~ ~-0.25 unless block ~ ~-1 ~ #minecraft:air_like run scoreboard players add @s player_pos_check 1

# if we dont have all four on ground, add scores of enemies beneath us
execute if score @s player_pos_check matches ..3 run function game:mechanics/player_pos_check/failed