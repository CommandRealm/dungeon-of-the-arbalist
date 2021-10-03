##called to do a downward raycast.
scoreboard players remove $calculate calculate 1
particle dust 0.592 0.584 0.188 1 ~ ~ ~ 0 0 0 0 1 force @a
effect give @a[distance=..1,tag=playing] instant_damage 1 0 true
execute if score $calculate calculate matches 1.. positioned ~ ~-0.5 ~ run function game:boss/fight/mummy/clouds/downward_raycast
