# called to find shortest timer

scoreboard players set $test calculate 1000

# making test equal smallest number
execute as @e[type=wither_skeleton,tag=plague_zombie,tag=!has_checked_timer] at @s run scoreboard players operation @s calculate = @s attack
execute as @e[type=wither_skeleton,tag=plague_zombie,tag=!has_checked_timer] at @s run scoreboard players operation $test calculate < @s calculate

# finding ones at 0
execute as @e[type=wither_skeleton,tag=plague_zombie,tag=!has_checked_timer] at @s run scoreboard players operation @s calculate -= $test calculate



# executing as ones at 0
execute as @e[type=wither_skeleton,team=enemy,tag=plague_zombie,scores={calculate=0},sort=arbitrary] at @s run function game:enemy/volition/plague/preparing_plague
execute if entity @e[type=wither_skeleton,tag=plague_zombie,tag=!has_checked_timer] run function game:enemy/volition/plague/find_shortest_timer