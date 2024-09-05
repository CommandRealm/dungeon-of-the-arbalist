# called to kill the spawner

tag @s add temp


# killing other parts
execute as @e[type=minecraft:zombie,tag=phantom_part] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=minecraft:zombie,tag=phantom_part] at @s run scoreboard players operation @s calculate -= @e[type=minecraft:phantom,tag=temp] id
kill @e[type=minecraft:zombie,tag=phantom_part,scores={calculate=0}]


tag @s remove temp
return 1