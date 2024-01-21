# called when the plague dude is there
tag @a remove play_alternate_title

# particle
execute at @e[type=wither_skeleton,team=enemy,tag=plague_zombie] run particle ash ~ ~1 ~ 0.4 0.8 0.4 0.5 3

# if there are two or more, find the one with the shortest time
execute store result score $calculate2 calculate if entity @e[type=wither_skeleton,team=enemy,tag=plague_zombie]
execute if score $calculate2 calculate matches 2.. run function game:enemy/volition/plague/find_shortest_timer
# calling prepartion phase (sort by arbitrary is used because it currently uses oldest mobs)
execute if score $calculate2 calculate matches ..1 as @e[type=wither_skeleton,team=enemy,tag=plague_zombie,scores={attack=-20..},sort=arbitrary] at @s run function game:enemy/volition/plague/preparing_plague

tag @a remove played_plague_message
tag @e[type=wither_skeleton] remove has_checked_timer
