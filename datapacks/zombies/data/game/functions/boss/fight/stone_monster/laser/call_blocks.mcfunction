##Called to move the blocks towards the boss

execute as @e[type=zombie,tag=boss_block_base] at @s facing entity @e[type=wither_skeleton,tag=boss,limit=1] feet run tp @s ^ ^ ^0.15 
execute at @e[type=zombie,tag=boss_block_base] run playsound minecraft:block.stone.place master @a ~ ~ ~ 1 0
execute as @e[type=wither_skeleton,tag=boss,limit=1] at @s unless entity @e[type=zombie,tag=boss_block_base,distance=3..] run function game:boss/fight/stone_monster/laser/call_blocks_over