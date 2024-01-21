# called to get a mob for the lobber

tag @s add lobber_setup

# temp number to access it later
scoreboard players set @s attack 9999

# summonig mob
summon marker ~ ~ ~ {Tags:["temporary_tag","lobber_spawn"]}
function game:enemy/summon_enemy
kill @e[type=marker,tag=lobber_spawn]
# finding newest lobber
# function game:enemy/volition/lobber/find_newest

tag @e[type=wither_skeleton,nbt={Passengers:[{}]}] add skip_ride
execute as @e[type=#minecraft:enemy,tag=needs_initialization,tag=!lobber_setup,limit=1] at @s run ride @s mount @e[type=wither_skeleton,tag=lobber_setup,tag=!skip_ride,sort=nearest,limit=1]
# execute as @e[type=#minecraft:enemy,tag=needs_initialization,tag=!lobber_setup,limit=1] at @s run function game:enemy/initialize



tag @s remove lobber_setup

tag @e[type=wither_skeleton,tag=skip_ride] remove skip_ride


# init stuff

