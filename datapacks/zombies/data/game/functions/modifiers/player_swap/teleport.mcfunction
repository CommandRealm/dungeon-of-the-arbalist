# called to teleport a player
tag @r[tag=playing,team=game] add swapping
tag @r[tag=playing,team=game,tag=!swapping] add stay_swap

# marking swap position
execute as @a[tag=playing,team=game,tag=stay_swap] at @s run summon marker ~ ~ ~ {Tags:["die_between_games","temp_position_marker"]}
#moving first player
tp @a[tag=playing,team=game,tag=stay_swap] @p[tag=playing,team=game,tag=swapping]
# moving to swap position
tp @a[tag=playing,team=game,tag=swapping] @e[type=marker,tag=temp_position_marker,limit=1]

# cleaning up
tag @a[tag=playing,team=game,tag=stay_swap] add swapped
tag @a[tag=playing,team=game,tag=swapping] add swapped