# called to add time to the one riding us


# adding time on the one riding us
execute on passengers run scoreboard players add @s[tag=lobber] attack 60

# if we have a passenger on our passenger, run it again as the one above us
execute on passengers as @s at @s run function game:enemy/volition/lobber/recursive_add_timer