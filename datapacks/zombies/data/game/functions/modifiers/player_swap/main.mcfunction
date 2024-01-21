# called for main player swap
# removing countdown
scoreboard players remove $player_swap calculate 1
execute if score $player_swap calculate matches 0 run function game:modifiers/player_swap/swap