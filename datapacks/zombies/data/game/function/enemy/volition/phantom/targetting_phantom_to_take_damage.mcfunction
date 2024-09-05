# called to target our phantom

tag @s add temp
execute as @e[type=minecraft:phantom,tag=phantom_part] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=minecraft:phantom,tag=phantom_part] at @s run scoreboard players operation @s calculate -= @e[type=minecraft:zombie,tag=phantom_part,tag=temp] id
execute as @e[type=minecraft:phantom,tag=phantom_part,scores={calculate=0}] at @s run data merge entity @s {active_effects:[{id:"minecraft:slowness",duration:10}]}
execute as @e[type=minecraft:phantom,tag=phantom_part,scores={calculate=0}] at @s run data modify entity @s active_effects set from entity @e[type=minecraft:zombie,tag=temp,tag=phantom_part,limit=1] active_effects
effect clear @e[type=minecraft:phantom,tag=phantom_part,scores={calculate=0}] minecraft:invisibility
execute as @e[type=minecraft:phantom,tag=phantom_part,tag=!took_damage,scores={calculate=0}] at @s run function game:enemy/take_damage

tag @s remove temp
tag @e[type=minecraft:phantom] remove took_damage
effect clear @s minecraft:luck
return 1