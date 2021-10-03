##called when the throwable tnt is active

##adding score
scoreboard players add @e[type=armor_stand,tag=throwable] attack 1

##What sets this off:
execute as @e[type=armor_stand,tag=throwable,scores={attack=4..}] at @s if entity @e[tag=enemy,distance=..3] run scoreboard players set @s attack 60
scoreboard players set @e[type=armor_stand,tag=throwable,scores={attack=4..},nbt={OnGround:1b}] attack 60
execute as @e[type=armor_stand,tag=throwable,scores={attack=50..}] at @s run function game:shops/items/throwable/activate


##Rotation
execute as @e[type=armor_stand,tag=throwable,scores={attack=2..}] at @s store result score @s calculate run data get entity @s Rotation[0] 1
scoreboard players add @e[type=armor_stand,tag=throwable,scores={attack=2..}] calculate 15
execute as @e[type=armor_stand,tag=throwable,scores={attack=2..}] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s calculate
