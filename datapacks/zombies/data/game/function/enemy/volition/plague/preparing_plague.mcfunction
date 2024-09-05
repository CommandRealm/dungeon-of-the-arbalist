# called to prepare plague


# tag @s add temp
# 
# # clearing new plagues
# execute as @e[type=area_effect_cloud,tag=generation_marker,limit=1,sort=nearest] positioned ~-16 ~-15 ~-16 run tag @e[type=wither_skeleton,tag=!temp,tag=plague_zombie,dx=31,dy=31,dz=31] add temp2
# execute as @e[type=wither_skeleton,tag=temp2] at @s if score @s attack >= @e[type=wither_skeleton,tag=temp,limit=1] attack run scoreboard players reset @s attack
# 
# tag @e[type=wither_skeleton,tag=temp2] remove temp2
# tag @e[type=wither_skeleton,tag=temp] remove temp
tag @s add has_checked_timer

# score
scoreboard players remove @s attack 1



# calculating seconds
scoreboard players operation @s calculate = @s attack
scoreboard players operation @s calculate /= $20 number
scoreboard players add @s calculate 1

# tagging players in the room

execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] at @s positioned ~-16 ~-15 ~-16 run tag @a[gamemode=adventure,dx=31,dy=31,dz=31,tag=playing] add play_alternate_title
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] at @s positioned ~-18 ~-15 ~-18 as @a[gamemode=adventure,dx=35,dy=31,dz=35,tag=playing] at @s if entity @e[type=minecraft:marker,distance=..6,tag=doorway] run tag @s add play_alternate_title
title @a[tag=play_alternate_title,tag=playing,tag=!played_plague_message,tag=!in_plagued_room] title [{"text":" ","type":"text"}]
title @a[tag=play_alternate_title,tag=playing,tag=!played_plague_message,tag=!in_plagued_room] subtitle ["",{"text":"[","color":"dark_red","bold":true,"type":"text"},{"text":"!","color":"red","bold":false,"type":"text"},{"text":"]","color":"dark_red","bold":true,"type":"text"},{"text":" - ","color":"dark_gray","type":"text"},{"text":"This room will be plagued in ","color":"gray","type":"text"},{"score":{"objective":"calculate","name":"@s"},"color":"dark_green","type":"score"},{"text":" seconds","color":"gray","type":"text"},{"text":".","color":"dark_gray","type":"text"}]
tag @a[tag=play_alternate_title,tag=playing] add played_plague_message


# seeing if its been a second (so we can play a sound)
scoreboard players operation @s calculate = @s attack
scoreboard players operation @s calculate %= $20 number
execute if score @s calculate matches 0 as @a[tag=play_alternate_title,tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.2 0.6


# if our attack timer ends
execute if score @s attack matches 3 run function game:enemy/volition/plague/plague_room_warning
execute if score @s attack matches 0 run function game:enemy/volition/plague/plague_room
execute if score @s attack matches ..-20 run function game:enemy/volition/plague/vanish

return 1