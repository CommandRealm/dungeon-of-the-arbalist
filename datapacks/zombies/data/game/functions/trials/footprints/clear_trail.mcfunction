# called to clear the trail
tag @s add temp

# finding ones with our score
execute as @e[type=marker,tag=footprint_marker] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=marker,tag=footprint_marker] at @s run scoreboard players operation @s calculate -= @p[tag=temp] id

# killing them

kill @e[type=marker,tag=footprint_marker,scores={calculate=0}]


tag @s remove temp