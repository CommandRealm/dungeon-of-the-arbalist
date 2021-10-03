##Called to update the bossbar.

execute store result bossbar game:boss value run scoreboard players get $health boss

##So we don't run this again
scoreboard players operation $compare_health boss = $health boss

##Checking if the phase needs to change.
execute if score $phase boss matches 1 if score $health boss <= $transform_point boss unless score $transform boss matches 1.. run function game:boss/fight/transform

##If the boss is dead.
execute if score $health boss matches ..0 run function game:boss/fight/die