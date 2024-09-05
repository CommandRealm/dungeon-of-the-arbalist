##Called to show us our game stats.

##Finding accuracy
scoreboard players operation @s local_accuracy = @s local_hits
scoreboard players operation @s local_accuracy *= $100 number
scoreboard players operation @s local_accuracy /= @s local_shots

##msgs
tellraw @s [{"text":"=","color":"dark_green","type":"text"},{"text":"-","color":"green","type":"text"},{"text":"=","color":"dark_green","type":"text"},{"text":" Statistics ","color":"gold","bold":true,"type":"text"},{"text":"=","color":"dark_green","type":"text"},{"text":"-","color":"green","type":"text"},{"text":"=","color":"dark_green","type":"text"}]

##difficulty
execute if score $difficulty settings matches -1 run tellraw @s [{"text":"Difficulty","color":"gold","type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"Training","color":"white","bold":true,"type":"text"}]
execute if score $difficulty settings matches 0 run tellraw @s [{"text":"Difficulty","color":"gold","type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"Super Easy","color":"dark_green","bold":true,"type":"text"}]
execute if score $difficulty settings matches 1 run tellraw @s [{"text":"Difficulty","color":"gold","type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"Easy","color":"green","bold":true,"type":"text"}]
execute if score $difficulty settings matches 2 run tellraw @s [{"text":"Difficulty","color":"gold","type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"Medium","color":"yellow","bold":true,"type":"text"}]
execute if score $difficulty settings matches 3 run tellraw @s [{"text":"Difficulty","color":"gold","type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"Hard","color":"red","bold":true,"type":"text"}]
execute if score $difficulty settings matches 4 run tellraw @s [{"text":"Difficulty","color":"gold","type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"Super Hard","color":"dark_red","bold":true,"type":"text"}]
execute if score $difficulty settings matches 5 run tellraw @s [{"text":"Difficulty","color":"gold","type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"Hardcore","color":"#600011","bold":true,"type":"text"}]
execute if score $difficulty settings matches 6 run tellraw @s [{"text":"Difficulty","color":"gold","type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"Nightmare","color":"#423031","bold":true,"type":"text"}]


##msgs
tellraw @s [{"text":"Shots ","color":"gray","italic":false,"bold":false,"type":"text"},{"text":"fired","color":"#8d7364","type":"text"},{"text":": ","color":"gray","type":"text"},{"score":{"objective":"local_shots","name":"@s"},"color":"#605852","italic":false,"bold":true,"type":"score"}]
tellraw @s [{"text":"Shots ","color":"red","italic":false,"bold":false,"type":"text"},{"text":"hit","color":"#605852","type":"text"},{"text":": ","color":"gray","type":"text"},{"score":{"objective":"local_hits","name":"@s"},"color":"#9e252b","italic":false,"bold":true,"type":"score"}]
tellraw @s [{"text":"Accuracy","color":"#d7141d","italic":false,"bold":false,"type":"text"},{"text":": ","color":"gray","type":"text"},{"score":{"objective":"local_accuracy","name":"@s"},"color":"gray","italic":false,"bold":true,"type":"score"},{"text":"%","color":"gray","bold":true,"type":"text"}]
tellraw @s [{"text":"Kills","color":"#7d2c30","italic":false,"bold":false,"type":"text"},{"text":": ","color":"gray","type":"text"},{"score":{"objective":"local_kills","name":"@s"},"color":"#664244","italic":false,"bold":true,"type":"score"}]
tellraw @s [{"text":"Treasure ","color":"yellow","italic":false,"bold":false,"type":"text"},{"text":"collected","color":"green","type":"text"},{"text":": ","color":"gray","type":"text"},{"score":{"objective":"local_treasure","name":"@s"},"color":"gold","italic":false,"bold":true,"type":"score"}]
tellraw @s [{"text":"Treasure ","color":"yellow","italic":false,"bold":false,"type":"text"},{"text":"spent","color":"red","type":"text"},{"text":": ","color":"gray","type":"text"},{"score":{"objective":"local_spent","name":"@s"},"color":"gold","italic":false,"bold":true,"type":"score"}]
return 1