##Called when our raycast hits a dark door door
title @s[tag=!play_alternate_title] title [{"text":"","type":"text"}]
execute if score $opened boss matches 0 run title @s[tag=!play_alternate_title] subtitle [{"text":"Drop to pay ","color":"gray","type":"text"},{"score":{"objective":"price_increment","name":"@e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#5a4f4f","bold":true,"type":"score"},{"text":" of ","color":"#b94a4f","type":"text"},{"score":{"objective":"price_left","name":"@e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#5a4f4f","bold":true,"type":"score"},{"text":" treasure","color":"yellow","type":"text"},{"text":" remaining.","color":"#ab0909","type":"text"}]
execute if score $opened boss matches 1 run title @s[tag=!play_alternate_title] subtitle [{"text":"Drop to ","color":"gray","type":"text"},{"text":"enter ","color":"#b94a4f","type":"text"},{"text":"the ","color":"gray","type":"text"},{"text":"Boss ","color":"#ab0909","type":"text"},{"text":"Room","color":"#5a4f4f","bold":false,"type":"text"},{"text":" | ","color":"gray","type":"text"},{"text":"You will be stuck.","color":"red","type":"text"}]

##temporary tag so we know we hit something
tag @s add temporary_tag

##Seeing if we dropped our crossbow.
execute if score @s try_purchase matches 1.. if score $opened boss matches 1 run function game:default/door/enter_boss_room
execute if score @s try_purchase matches 1.. if score $opened boss matches 0 run function game:door/try_purchase

return 1