# called to display negative treasure
scoreboard players operation @s new_treasure *= $-1 number
title @s actionbar [{"text":"You have ","color":"gray"},{"score":{"objective":"treasure","name":"@s"},"color":"yellow"},{"text":" treasure.","color":"gold"},{"text":" | ","color":"gray","bold":true},{"text":"-","color":"red"},{"score":{"objective":"new_treasure","name":"@s"},"color":"yellow"},{"text":" treasure","color":"gold"}]
scoreboard players operation @s new_treasure *= $-1 number