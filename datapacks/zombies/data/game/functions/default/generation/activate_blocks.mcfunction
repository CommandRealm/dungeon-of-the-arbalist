##called to activate structure blocks.

##Selecting an AEC
execute at @e[type=area_effect_cloud,tag=set_redstone_block_for_generation,sort=random,limit=1] as @e[type=area_effect_cloud,tag=set_redstone_block_for_generation,sort=random,limit=3,distance=..10] at @s run function game:default/generation/place_redstone_block