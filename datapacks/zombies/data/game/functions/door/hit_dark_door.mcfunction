##Called when our raycast hits a dark door door
title @s[tag=!play_alternate_title] title [{"text":""}]
title @s[tag=!play_alternate_title] subtitle [{"text":"Drop to pay ","color":"gray"},{"score":{"objective":"price_increment","name":"@e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#af7c7f","bold":true},{"text":" of ","color":"#b94a4f"},{"score":{"objective":"price_left","name":"@e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#af7c7f","bold":true},{"text":" treasure","color":"yellow"},{"text":" remaining.","color":"#b94a4f"}]

##temporary tag so we know we hit something
tag @s add temporary_tag

##Seeing if we dropped our crossbow.
execute if score @s try_purchase matches 1.. run function game:door/try_purchase