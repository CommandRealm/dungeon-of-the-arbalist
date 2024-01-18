# called when phantom takes damage

# fail safe
tag @s add took_damage


# removed jumping feature
# tag @s add temp
# execute as @e[type=zombie,tag=phantom_part] at @s run scoreboard players operation @s calculate = @s id
# execute as @e[type=zombie,tag=phantom_part] at @s run scoreboard players operation @s calculate -= @e[type=phantom,tag=temp] id
# data merge entity @e[type=zombie,tag=phantom_part,scores={calculate=0},limit=1] {active_effects:[{id:"minecraft:levitation",duration:5,amplifier:17,show_particles:false}]}
# say @e[type=zombie,tag=phantom_part,scores={calculate=0},limit=1]
# tag @s remove temp