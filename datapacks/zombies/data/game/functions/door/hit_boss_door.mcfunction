##Called when our raycast hits a dark door door
title @s title [{"text":""}]
execute if score $opened boss matches 0 run title @s subtitle [{"text":"Drop to pay ","color":"gray"},{"score":{"objective":"price_increment","name":"@e[type=area_effect_cloud,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#5a4f4f","bold":true},{"text":" of ","color":"#b94a4f"},{"score":{"objective":"price_left","name":"@e[type=area_effect_cloud,tag=raycast,tag=doorway,sort=nearest,limit=1]"},"color":"#5a4f4f","bold":true},{"text":" treasure","color":"yellow"},{"text":" remaining.","color":"#ab0909"}]
execute if score $opened boss matches 1 run title @s subtitle [{"text":"Drop to ","color":"gray"},{"text":"enter ","color":"#b94a4f"},{"text":"the ","color":"gray"},{"text":"Boss ","color":"#ab0909"},{"text":"Room","color":"#5a4f4f","bold":false},{"text":" | ","color":"gray"},{"text":"You will be stuck.","color":"red"}]

##temporary tag so we know we hit something
tag @s add temporary_tag

##Seeing if we dropped our crossbow.
execute if score @s try_purchase matches 1.. if score $opened boss matches 1 run function game:default/door/enter_boss_room
execute if score @s try_purchase matches 1.. if score $opened boss matches 0 run function game:door/try_purchase
