##Called when our raycast hits a dark door door
title @s[tag=!play_alternate_title] title [{"text":"","type":"text"}]
title @s[tag=!play_alternate_title] subtitle [{"text":"Drop to pay ","color":"gray","type":"text"},{"score":{"objective":"price_increment","name":"@e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#af7c7f","bold":true,"type":"score"},{"text":" of ","color":"#b94a4f","type":"text"},{"score":{"objective":"price_left","name":"@e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#af7c7f","bold":true,"type":"score"},{"text":" treasure","color":"yellow","type":"text"},{"text":" remaining.","color":"#b94a4f","type":"text"}]

##temporary tag so we know we hit something
tag @s add temporary_tag

##Seeing if we dropped our crossbow.
execute if score @s try_purchase matches 1.. run function game:door/try_purchase
return 1