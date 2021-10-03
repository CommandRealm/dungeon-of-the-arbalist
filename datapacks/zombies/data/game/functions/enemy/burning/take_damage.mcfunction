##Called when an enemy takes damage.

##instant damage
effect give @s luck 1 11
function game:enemy/take_damage


##Resetting burn timer if we need it

##Remaining burns
scoreboard players remove @s burning_times 1

##If we're tagged with wildfire
execute as @e[distance=..1.5,tag=enemy,tag=!wildfire_burn] at @s run function game:enemy/effect/wildfire_burn

##If we have burns remaining, reset our timer
scoreboard players set @s[scores={burning_times=1..}] burning_timer 20

##Resetting our burning timer if we have no burns remaining
scoreboard players reset @s[scores={burning_times=0}] burning_timer

##Removing wildfire tag if we're done
tag @s[scores={burning_times=0}] remove wildfire_burn

##Resetting our burns remaining if we're done.
scoreboard players reset @s[scores={burning_times=0}] burning_times

##Sounds
particle smoke ~ ~ ~ 0.25 0.25 0.25 0.15 20
particle lava ~ ~ ~ 0.25 0.25 0.25 0.15 10

