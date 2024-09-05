# called to display negative treasure
scoreboard players operation @s new_treasure *= $-1 number
title @s actionbar [{"text":"You have ","color":"gray","type":"text"},{"score":{"objective":"treasure","name":"@s"},"color":"yellow","type":"score"},{"text":" treasure.","color":"gold","type":"text"},{"text":" | ","color":"gray","bold":true,"type":"text"},{"text":"-","color":"red","type":"text"},{"score":{"objective":"new_treasure","name":"@s"},"color":"yellow","type":"score"},{"text":" treasure","color":"gold","type":"text"}]
scoreboard players operation @s new_treasure *= $-1 number
return 1