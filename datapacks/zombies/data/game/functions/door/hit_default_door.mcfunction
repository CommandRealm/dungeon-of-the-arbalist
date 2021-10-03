##Called when our raycast hits a default door
title @s title [{"text":""}]
title @s subtitle [{"text":"Drop to pay ","color":"gray"},{"score":{"objective":"price_increment","name":"@e[type=area_effect_cloud,tag=raycast,tag=default_door,sort=nearest,limit=1]"},"color":"yellow","bold":true},{"text":" of ","color":"gray"},{"score":{"objective":"price_left","name":"@e[type=area_effect_cloud,tag=raycast,tag=default_door,sort=nearest,limit=1]"},"color":"yellow","bold":true},{"text":" treasure","color":"gold"},{"text":" remaining.","color":"gray"}]

##temporary tag so we know we hit something
tag @s add temporary_tag

##Seeing if we dropped our crossbow.
execute if score @s try_purchase matches 1.. run function game:door/try_purchase