##Start
##Execuating at spawnpoints
execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-15 ~-16 as @e[type=area_effect_cloud,tag=bee_spawn,dx=31,dy=31,dz=31] at @s run function game:enemy/bee/summon

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Scary Swarm","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1