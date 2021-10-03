##Called to do a laser attack.

execute if score $attack boss matches 155 as @e[type=wither_skeleton,tag=boss,limit=1] at @s run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 0
execute if score $attack boss matches 151 as @e[type=wither_skeleton,tag=boss] at @s run tp @s ~ ~ ~ facing entity @r[tag=playing,team=game,tag=in_boss_room] feet
execute if score $attack boss matches 150 run function game:boss/fight/stone_monster/laser/raycast/start
execute if score $attack boss matches ..150 as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run function game:boss/fight/stone_monster/laser/raycast/raycast
execute if score $attack boss matches 0 run function game:boss/fight/stone_monster/laser/over