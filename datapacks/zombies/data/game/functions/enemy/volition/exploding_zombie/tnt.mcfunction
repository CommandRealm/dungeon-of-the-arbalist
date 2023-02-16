# when a tnt is live

scoreboard players remove @s attack 1

execute if score @s attack matches 1 run function game:enemy/volition/exploding_zombie/explode