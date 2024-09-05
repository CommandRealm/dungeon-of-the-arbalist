##Called when our raycast hits a dark door door
title @s[tag=!play_alternate_title] title [{"text":"","type":"text"}]
title @s[tag=!play_alternate_title] subtitle [{"text":"This door will cost ","color":"gray","type":"text"},{"score":{"objective":"price_left","name":"@e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#af7c7f","bold":true,"type":"score"},{"text":" treasure","color":"yellow","type":"text"}]

##temporary tag so we know we hit something
tag @s add temporary_tag

return 1