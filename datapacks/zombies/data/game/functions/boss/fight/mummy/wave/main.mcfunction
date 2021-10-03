##Called when the mummy is attacking.

##If he's still shooting them.
execute if entity @e[type=area_effect_cloud,tag=wave_start_point] run function game:boss/fight/mummy/wave/firing/main


##Moving the blocks forward
execute as @e[type=armor_stand,tag=obsidian_block_carrier] at @s anchored eyes run tp @s ^ ^ ^0.25
execute as @e[type=falling_block,tag=obsidian_block] at @s run effect give @a[tag=playing,distance=..1] instant_damage 1 0 true
execute as @e[type=falling_block,tag=obsidian_block] at @s run effect give @a[tag=playing,distance=..1] instant_damage 1 0 true
execute as @e[type=armor_stand,tag=obsidian_block_carrier] at @s anchored eyes run tp @s ^ ^ ^0.25
execute as @e[type=falling_block,tag=obsidian_block] at @s run effect give @a[tag=playing,distance=..1] instant_damage 1 0 true
execute as @e[type=falling_block,tag=obsidian_block] at @s run effect give @a[tag=playing,distance=..1] instant_damage 1 0 true
execute as @e[type=falling_block,tag=obsidian_block] at @s run data modify entity @s Time set value 2

##Particles
execute at @e[type=falling_block,tag=obsidian_block] run particle smoke ~ ~ ~ 0 0 0 0.35 1

##
execute if score $attack boss matches ..2147483486 unless entity @e[type=armor_stand,tag=obsidian_block_carrier,x=3160,y=53,z=261,distance=..20] run function game:boss/fight/mummy/wave/over