##Main function for blocks.


execute as @e[type=minecraft:falling_block,tag=essence_block] at @s if entity @a[gamemode=adventure,distance=..1.5,tag=playing,team=game] run function game:boss/fight/forest_essence/block/hit


execute if score $attack boss matches ..2147483626 as @e[type=minecraft:armor_stand,tag=essence_block_marker,nbt={OnGround:1b}] at @s positioned ~ ~0.75 ~ as @e[type=minecraft:falling_block,tag=essence_block,sort=nearest,limit=1] run function game:boss/fight/forest_essence/block/destroy_block

return 1