##Start
##Execuating at spawnpoints
execute at @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-15 ~-16 as @e[type=minecraft:area_effect_cloud,dx=31,dy=31,dz=31,tag=piglin_spawn] at @s run function game:enemy/piglins/summon

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Piglin Horde","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1
return 1