# called to convert the shopkeeper

tellraw @s [{"text":"The shopkeepers remember what","color":"gray","type":"text"},{"text":"you have done","color":"dark_red","type":"text"},{"text":".","color":"dark_gray","type":"text"}]

scoreboard players set @e[dx=31,dy=31,dz=31,tag=shopkeeper,team=!enemy] attack 5
execute as @e[dx=31,dy=31,dz=31,tag=shopkeeper,team=!enemy] at @s run function game:shops/shopkeeper/take_damage
return 1