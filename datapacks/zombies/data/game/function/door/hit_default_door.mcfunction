##Called when our raycast hits a default door
title @s[tag=!play_alternate_title] title [{"text":"","type":"text"}]
title @s[tag=!play_alternate_title] subtitle [{"text":"Drop to pay ","color":"gray","type":"text"},{"score":{"objective":"price_increment","name":"@e[type=minecraft:marker,tag=raycast,tag=default_door,sort=nearest,limit=1]"},"color":"yellow","bold":true,"type":"score"},{"text":" of ","color":"gray","type":"text"},{"score":{"objective":"price_left","name":"@e[type=minecraft:marker,tag=raycast,tag=default_door,sort=nearest,limit=1]"},"color":"yellow","bold":true,"type":"score"},{"text":" treasure","color":"gold","type":"text"},{"text":" remaining.","color":"gray","type":"text"}]

##temporary tag so we know we hit something
tag @s add temporary_tag

##Seeing if we dropped our crossbow.
execute if score @s try_purchase matches 1.. run function game:door/try_purchase
return 1