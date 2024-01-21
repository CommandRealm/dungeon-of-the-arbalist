# called to get attack timer

tag @e[type=wither_skeleton,scores={attack=9000..}] add needs_lob_timer
# getting atack timer (addition is so that multiple lobbers are delayed)
scoreboard players set @e[type=wither_skeleton,tag=needs_lob_timer] attack 80
scoreboard players set @e[type=wither_skeleton,tag=needs_lob_timer,tag=enhanced] attack 40


execute as @e[type=wither_skeleton,tag=needs_lob_timer] at @s run function game:enemy/volition/lobber/recursive_add_timer
# 

tag @e[type=wither_skeleton] remove needs_lob_timer