# called to target our phantom

tag @s add temp
execute as @e[type=phantom,tag=phantom_part] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=phantom,tag=phantom_part] at @s run scoreboard players operation @s calculate -= @e[type=zombie,tag=phantom_part,tag=temp] id
execute as @e[type=phantom,tag=phantom_part,scores={calculate=0}] at @s run data merge entity @s {ActiveEffects:[{Id:2,Duration:10}]}
execute as @e[type=phantom,tag=phantom_part,scores={calculate=0}] at @s run data modify entity @s ActiveEffects set from entity @e[type=zombie,tag=temp,tag=phantom_part,limit=1] ActiveEffects
effect clear @e[type=phantom,tag=phantom_part,scores={calculate=0}] invisibility
execute as @e[type=phantom,tag=phantom_part,scores={calculate=0},tag=!took_damage] at @s run function game:enemy/take_damage

tag @s remove temp
tag @e[type=phantom] remove took_damage
effect clear @s luck