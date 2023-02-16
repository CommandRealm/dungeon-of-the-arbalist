##Called when our raycast hits a dark door door
title @s[tag=!play_alternate_title] title [{"text":""}]
title @s[tag=!play_alternate_title] subtitle [{"text":"This door will cost ","color":"gray"},{"score":{"objective":"price_left","name":"@e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#5a4f4f","bold":true},{"text":" treasure","color":"yellow"}]

##temporary tag so we know we hit something
tag @s add temporary_tag
