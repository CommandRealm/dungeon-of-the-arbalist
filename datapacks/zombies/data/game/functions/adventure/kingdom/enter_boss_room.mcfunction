##Called to enter the boss room.
tp @s 3160 59 214 0 10
execute if score $started boss matches 1.. run tp @s 3160 55 242 0 10
execute if score $started boss matches ..-1 run tp @s 3160 55 242 0 10


execute if score $started boss matches 0 unless entity @e[type=area_effect_cloud,tag=start_boss_fight] run function game:adventure/kingdom/new_area/area_7


scoreboard players set @s[tag=playing] objective 4
function game:adventure/new_objective