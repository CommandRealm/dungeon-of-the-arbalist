##Called when all the blocks are within range of the boss.
scoreboard players set $attack boss 160
function game:boss/fight/stone_monster/blocks/clear
execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run tp @s ~ ~ ~ facing entity @r[tag=playing,tag=in_boss_room,team=game]
return 1