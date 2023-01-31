# called to kill the spawner

tag @s add temp


# killing other parts
execute as @e[type=area_effect_cloud,tag=mob_spawner_part] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=area_effect_cloud,tag=mob_spawner_part] at @s run scoreboard players operation @s calculate -= @e[type=magma_cube,tag=temp] id
kill @e[type=area_effect_cloud,tag=mob_spawner_part,scores={calculate=0}]

# killing other parts
execute as @e[type=falling_block,tag=mob_spawner_part] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=falling_block,tag=mob_spawner_part] at @s run scoreboard players operation @s calculate -= @e[type=magma_cube,tag=temp] id
kill @e[type=falling_block,tag=mob_spawner_part,scores={calculate=0}]

tag @s remove temp