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
execute if score $second bossbar_time matches 10.. run bossbar set game:wave name [{"text":"=","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false},{"text":" Wave ","color":"dark_green","bold":false},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" |","color":"dark_gray","bold":true},{"text":" Time ","color":"dark_green","bold":false},{"text":"remaining: ","color":"gray","bold":false},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green"},{"text":":","color":"gray"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green"},{"text":" =","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false}]
execute if score $second bossbar_time matches ..9 run bossbar set game:wave name [{"text":"=","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false},{"text":" Wave ","color":"dark_green","bold":false},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" |","color":"dark_gray","bold":true},{"text":" Time ","color":"dark_green","bold":false},{"text":"remaining: ","color":"gray","bold":false},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"green"},{"text":":","color":"gray"},{"text":"0","color":"green"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"green"},{"text":" =","color":"dark_green","bold":false},{"text":"-","color":"gray","bold":false},{"text":"=","color":"dark_green","bold":false}]


