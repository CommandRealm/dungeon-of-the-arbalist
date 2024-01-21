# called to find newest lobber

execute as @e[type=#minecraft:enemy,tag=needs_initialization,tag=!lobber_setup] at @s run tag @e[type=wither_skeleton,tag=lobber_setup,sort=arbitrary,limit=1,tag=!skip_ride] add skip_ride

# counting how many dont have skip_ride
execute store result score $calculate calculate if entity @e[type=wither_skeleton,tag=lobber_setup,tag=!skip_ride]
execute if score $calculate calculate matches 2.. run function game:enemy/volition/lobber/find_newest
