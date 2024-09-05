##Called when the mummy is attacking.

##If he's still shooting them.
execute if entity @e[type=minecraft:area_effect_cloud,tag=wave_start_point] run function game:boss/fight/mummy/wave/firing/main


##Moving the blocks forward
execute as @e[type=minecraft:armor_stand,tag=obsidian_block_carrier] at @s anchored eyes run tp @s ^ ^ ^0.25
execute as @e[type=minecraft:falling_block,tag=obsidian_block] at @s run effect give @a[distance=..1,tag=playing] minecraft:instant_damage 1 0 true
execute as @e[type=minecraft:falling_block,tag=obsidian_block] at @s run effect give @a[distance=..1,tag=playing] minecraft:instant_damage 1 0 true
execute as @e[type=minecraft:armor_stand,tag=obsidian_block_carrier] at @s anchored eyes run tp @s ^ ^ ^0.25
execute as @e[type=minecraft:falling_block,tag=obsidian_block] at @s run effect give @a[distance=..1,tag=playing] minecraft:instant_damage 1 0 true
execute as @e[type=minecraft:falling_block,tag=obsidian_block] at @s run effect give @a[distance=..1,tag=playing] minecraft:instant_damage 1 0 true
execute as @e[type=minecraft:falling_block,tag=obsidian_block] at @s run data modify entity @s Time set value 2

##Particles
execute at @e[type=minecraft:falling_block,tag=obsidian_block] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.35 1

##
execute if score $attack boss matches ..2147483486 unless entity @e[type=minecraft:armor_stand,x=3160,y=53,z=261,distance=..20,tag=obsidian_block_carrier] run function game:boss/fight/mummy/wave/over
return 1