##Called when the game should end soon.
execute if score $game_end_countdown game matches 12000 run function game:hour_countdown/ten_minute
execute if score $game_end_countdown game matches 200 run function game:hour_countdown/ten_second
execute if score $game_end_countdown game matches 0 run function game:hour_countdown/end
