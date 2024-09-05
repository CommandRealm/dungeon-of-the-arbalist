##Called when we win adventure to see if we got a new highscore. (only called in singleplayer runs)

##Getting our time.
function game:adventure/calculate_time
##Putting it on a sign, so it's easier to read off later.
execute if score $minute calculate matches 0 run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'

execute if score $minute calculate matches 1.. if score $second calculate matches 10.. run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow","type":"score"},{"text":":","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'
execute if score $minute calculate matches 1.. if score $second calculate matches ..9 run data modify block 0 10 0 front_text.messages[0] set value '[{"score":{"objective":"calculate","name":"$minute"},"color":"yellow","type":"score"},{"text":":","color":"gold","type":"text"},{"text":"0","color":"yellow","type":"text"},{"score":{"objective":"calculate","name":"$second"},"color":"yellow","type":"score"},{"text":".","color":"gold","type":"text"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow","type":"score"}]'

##Msg
team join yellow
execute if score $mode settings matches 1 unless score $difficulty settings matches -1 if score @s run < @s castle_score run function game:adventure/castle/personal_best
execute if score $mode settings matches 2 unless score $difficulty settings matches -1 if score @s run < @s kingdom_score run function game:adventure/kingdom/personal_best


execute if score $mode settings matches 1 run function help:4482978870a53db2311c8d91d6a7456042a382e4e605f2782f745611b681507b
execute if score $mode settings matches 2 run function help:06d8f67fcbb95b08c6b444bd59ce310ddc622ac6885adcf12ad0b3f4b9baef63

team join won
return 1