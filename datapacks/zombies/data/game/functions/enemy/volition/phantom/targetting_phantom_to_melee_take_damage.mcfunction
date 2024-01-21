# called when we take melee damage

tag @s add temp
execute as @e[type=phantom,tag=phantom_part] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=phantom,tag=phantom_part] at @s run scoreboard players operation @s calculate -= @e[type=zombie,tag=phantom_part,tag=temp] id
execute as @e[type=phantom,tag=phantom_part,scores={calculate=0},tag=!took_damage] at @s run function game:enemy/take_melee_damage

tag @s remove temp
tag @e[type=phantom] remove took_damage
effect clear @s luck