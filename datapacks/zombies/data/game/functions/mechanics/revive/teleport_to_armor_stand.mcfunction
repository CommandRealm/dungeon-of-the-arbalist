##Called by ourself to spectate our dead armor stand

##tag
tag @s add temporary_tag

execute as @e[type=armor_stand,tag=revive_point] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=armor_stand,tag=revive_point] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] id

tp @s @e[type=armor_stand,tag=revive_point,scores={calculate=0},limit=1]


##tag removal
tag @s remove temporary_tag