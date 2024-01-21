# called when there is a lobber

# getting new timer (its done here because spawning is REALLY messy)
execute if score @s attack matches 9000.. run function game:enemy/volition/lobber/get_timer

scoreboard players remove @s attack 1
execute if score @s attack matches 0 run function game:enemy/volition/lobber/throw