# called when the player pos check is failed (aka player is dangling over an edge)


# storing our y value for the jump attack
execute store result score $calculate calculate run data get entity @s Pos[1] 100


# adding score
execute positioned ~-1 ~-15 ~-1 run scoreboard players add @e[team=enemy,dx=2,dy=14,dz=2,tag=!boss] player_pos_check 1

# if they are ready to jump
execute as @e[tag=enemy,scores={player_pos_check=20..}] at @s run function game:mechanics/player_pos_check/enemy_jump