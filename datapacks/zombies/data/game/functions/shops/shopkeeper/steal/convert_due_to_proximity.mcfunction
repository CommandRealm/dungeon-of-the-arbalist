# called to convert the shopkeeper

tellraw @s [{"text":"The shopkeepers remember what","color":"gray"},{"text":"you have done","color":"dark_red"},{"text":".","color":"dark_gray"}]

scoreboard players set @e[tag=shopkeeper,team=!enemy,dx=31,dy=31,dz=31] attack 5
execute as @e[tag=shopkeeper,team=!enemy,dx=31,dy=31,dz=31] at @s run function game:shops/shopkeeper/take_damage