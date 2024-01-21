##Called when we win adventure to see if we got a new highscore. (only called in singleplayer runs)

##Getting our time.
function game:adventure/calculate_time
##Putting it on a sign, so it's easier to read off later.
execute if score $minute calculate matches 0 run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'

execute if score $minute calculate matches 1.. if score $second calculate matches 10.. run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow"},{"text":":","color":"gold"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'
execute if score $minute calculate matches 1.. if score $second calculate matches ..9 run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow"},{"text":":","color":"gold"},{"text":"0","color":"yellow"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]'

##Msg
team join yellow

execute if score $mode settings matches 1 run tellraw @a ["",{"text":"| ","color":"gray","bold":true},{"selector":"@s"},{"text":" has finished the ","color":"gold"},{"text":"Invaded Castle","color":"dark_green","bold":true},{"text":" in ","color":"gold"},{"nbt":"front_text.messages[0]","block":"0 10 0","interpret": true}]
execute if score $mode settings matches 2 run tellraw @a ["",{"text":"| ","color":"gray","bold":true},{"selector":"@s"},{"text":" has finished the ","color":"gold"},{"text":"Corrupted Kingdom","color":"dark_green","bold":true},{"text":" in ","color":"gold"},{"nbt":"front_text.messages[0]","block":"0 10 0","interpret": true}]

# changing our run score to the best score finished score
execute if score $finish_time game matches 1.. run scoreboard players operation @s run = $finish_time game


execute if score $mode settings matches 1 if score $players_during_start game matches 1 unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s castle_score run function leaderboards:castle/personal_best
execute if score $mode settings matches 1 if score $players_during_start game matches 2 unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s castle_score2 run function leaderboards:castle_duo/personal_best
execute if score $mode settings matches 1 if score $players_during_start game matches 3 unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s castle_score3 run function leaderboards:castle_trio/personal_best
execute if score $mode settings matches 1 if score $players_during_start game matches 4.. unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s castle_score4 run function leaderboards:castle_squad/personal_best





execute if score $mode settings matches 2 if score $players_during_start game matches 1 unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s kingdom_score run function leaderboards:kingdom/personal_best
execute if score $mode settings matches 2 if score $players_during_start game matches 2 unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s kingdom_score2 run function leaderboards:kingdom_duo/personal_best
execute if score $mode settings matches 2 if score $players_during_start game matches 3 unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s kingdom_score3 run function leaderboards:kingdom_trio/personal_best
execute if score $mode settings matches 2 if score $players_during_start game matches 4.. unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s kingdom_score4 run function leaderboards:kingdom_squad/personal_best

execute unless score $finish_time game matches 1.. run scoreboard players operation $finish_time game = @s run



team join won 