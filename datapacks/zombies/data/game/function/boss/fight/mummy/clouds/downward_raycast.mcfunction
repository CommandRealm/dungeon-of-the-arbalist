##called to do a downward raycast.
scoreboard players remove $calculate calculate 1
particle minecraft:dust{color:[0.592f,0.584f,0.188f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 force @a
effect give @a[distance=..1,tag=playing] minecraft:instant_damage 1 0 true
execute if score $calculate calculate matches 1.. positioned ~ ~-0.5 ~ run function game:boss/fight/mummy/clouds/downward_raycast

return 1