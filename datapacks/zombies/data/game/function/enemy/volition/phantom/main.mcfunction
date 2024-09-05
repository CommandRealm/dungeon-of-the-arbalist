# called whenever there is a phantom

# copying x val
execute as @e[type=minecraft:phantom,tag=phantom_part] at @s store result entity @s Rotation[0] float 1 run data get entity @e[type=minecraft:zombie,tag=phantom_part,sort=nearest,limit=1] Rotation[0] 1

# storing y values
execute as @e[type=minecraft:phantom,tag=phantom_part] store result score @s calculate run data get entity @s Rotation[1] 1

# fixing them
execute as @e[type=minecraft:phantom,tag=phantom_part,scores={calculate=41..}] run data modify entity @s Rotation[1] set value -20.0f
execute as @e[type=minecraft:phantom,tag=phantom_part,scores={calculate=-31..}] run data modify entity @s Rotation[1] set value 20.0f

# particles
execute at @e[type=minecraft:phantom,tag=phantom_part] run particle minecraft:falling_dust{block_state:{Name:"minecraft:black_concrete"}} ^1.2 ^0.5 ^ 0 0 0 0 1
execute at @e[type=minecraft:phantom,tag=phantom_part] run particle minecraft:falling_dust{block_state:{Name:"minecraft:black_concrete"}} ^-1.2 ^0.5 ^ 0 0 0 0 1
return 1