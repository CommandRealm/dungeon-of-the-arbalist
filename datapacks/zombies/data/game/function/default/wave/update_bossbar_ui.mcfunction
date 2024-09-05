##Called to update the bossbar

##Copying score
execute store result bossbar game:wave value run scoreboard players get $wave_length game

##Math
scoreboard players operation $minute bossbar_time = $wave_length game
scoreboard players operation $minute bossbar_time /= $minute number
scoreboard players operation $calculate bossbar_time = $minute bossbar_time
scoreboard players operation $calculate bossbar_time *= $minute number
scoreboard players operation $second bossbar_time = $wave_length game
scoreboard players operation $second bossbar_time -= $calculate bossbar_time
scoreboard players operation $second bossbar_time /= $20 number
scoreboard players set $time bossbar_time 20


##Display
execute if score $second bossbar_time matches 10.. run bossbar set game:wave name [{"text":"=","color":"dark_green","bold":false,"type":"text"},{"text":"-","color":"gray","bold":false,"type":"text"},{"text":"=","color":"dark_green","bold":false,"type":"text"},{"text":" Wave ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"},{"text":" |","color":"dark_gray","bold":true,"type":"text"},{"text":" Time ","color":"dark_green","bold":false,"type":"text"},{"text":"remaining: ","color":"gray","bold":false,"type":"text"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green","type":"score"},{"text":":","color":"gray","type":"text"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green","type":"score"},{"text":" =","color":"dark_green","bold":false,"type":"text"},{"text":"-","color":"gray","bold":false,"type":"text"},{"text":"=","color":"dark_green","bold":false,"type":"text"}]
execute if score $second bossbar_time matches ..9 run bossbar set game:wave name [{"text":"=","color":"dark_green","bold":false,"type":"text"},{"text":"-","color":"gray","bold":false,"type":"text"},{"text":"=","color":"dark_green","bold":false,"type":"text"},{"text":" Wave ","color":"dark_green","bold":false,"type":"text"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true,"type":"score"},{"text":" |","color":"dark_gray","bold":true,"type":"text"},{"text":" Time ","color":"dark_green","bold":false,"type":"text"},{"text":"remaining: ","color":"gray","bold":false,"type":"text"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green","type":"score"},{"text":":","color":"gray","type":"text"},{"text":"0","color":"green","type":"text"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green","type":"score"},{"text":" =","color":"dark_green","bold":false,"type":"text"},{"text":"-","color":"gray","bold":false,"type":"text"},{"text":"=","color":"dark_green","bold":false,"type":"text"}]



return 1