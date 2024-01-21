# called to ride the top
tag @e[type=wither_skeleton,nbt={Passengers:[{}]}] add skip_ride
ride @s mount @e[type=wither_skeleton,tag=lobber,tag=!skip_ride,sort=nearest,limit=1]
tag @e[type=wither_skeleton,tag=skip_ride] remove skip_ride