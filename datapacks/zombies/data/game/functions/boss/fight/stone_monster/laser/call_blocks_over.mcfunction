##Called when all the blocks are within range of the boss.
scoreboard players set $attack boss 160
function game:boss/fight/stone_monster/blocks/clear
execute as @e[type=wither_skeleton,tag=boss] at @s run tp @s ~ ~ ~ facing entity @r[tag=playing,team=game,tag=in_boss_room]