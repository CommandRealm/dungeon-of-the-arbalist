##Called to show us our game stats.

##Finding accuracy
scoreboard players operation @s local_accuracy = @s local_hits
scoreboard players operation @s local_accuracy *= $100 number
scoreboard players operation @s local_accuracy /= @s local_shots

##msgs
tellraw @s [{"text":"=","color":"dark_green"},{"text":"-","color":"green"},{"text":"=","color":"dark_green"},{"text":" Statistics ","color":"gold","bold":true},{"text":"=","color":"dark_green"},{"text":"-","color":"green"},{"text":"=","color":"dark_green"}]

##difficulty
execute if score $difficulty settings matches -1 run tellraw @s [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Training","color":"white","bold":true}]
execute if score $difficulty settings matches 0 run tellraw @s [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Super Easy","color":"dark_green","bold":true}]
execute if score $difficulty settings matches 1 run tellraw @s [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Easy","color":"green","bold":true}]
execute if score $difficulty settings matches 2 run tellraw @s [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Medium","color":"yellow","bold":true}]
execute if score $difficulty settings matches 3 run tellraw @s [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Hard","color":"red","bold":true}]
execute if score $difficulty settings matches 4 run tellraw @s [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Super Hard","color":"dark_red","bold":true}]
execute if score $difficulty settings matches 5 run tellraw @s [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Hardcore","color":"#600011","bold":true}]
execute if score $difficulty settings matches 6 run tellraw @s [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Nightmare","color":"#423031","bold":true}]


##msgs
tellraw @s [{"text":"Shots ","color":"gray","italic":false,"bold":false},{"text":"fired","color":"#8d7364"},{"text":": ","color":"gray"},{"score":{"objective":"local_shots","name":"@s"},"color":"#605852","italic":false,"bold":true}]
tellraw @s [{"text":"Shots ","color":"red","italic":false,"bold":false},{"text":"hit","color":"#605852"},{"text":": ","color":"gray"},{"score":{"objective":"local_hits","name":"@s"},"color":"#9e252b","italic":false,"bold":true}]
tellraw @s [{"text":"Accuracy","color":"#d7141d","italic":false,"bold":false},{"text":": ","color":"gray"},{"score":{"objective":"local_accuracy","name":"@s"},"color":"gray","italic":false,"bold":true},{"text":"%","color":"gray","bold":true}]
tellraw @s [{"text":"Kills","color":"#7d2c30","italic":false,"bold":false},{"text":": ","color":"gray"},{"score":{"objective":"local_kills","name":"@s"},"color":"#664244","italic":false,"bold":true}]
tellraw @s [{"text":"Treasure ","color":"yellow","italic":false,"bold":false},{"text":"collected","color":"green"},{"text":": ","color":"gray"},{"score":{"objective":"local_treasure","name":"@s"},"color":"gold","italic":false,"bold":true}]
tellraw @s [{"text":"Treasure ","color":"yellow","italic":false,"bold":false},{"text":"spent","color":"red"},{"text":": ","color":"gray"},{"score":{"objective":"local_spent","name":"@s"},"color":"gold","italic":false,"bold":true}]


function game:trials/end
function game:modifiers/tellraw
function game:trials/tellraw