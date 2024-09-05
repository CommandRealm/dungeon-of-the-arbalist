##Called when an enemy takes damage.

##Getting the amplifier of luck
scoreboard players set @s calculate_2 8

##if we're on fire
execute unless entity @s[nbt={Fire:-1s}] run scoreboard players set @s calculate_2 12
execute if block ~ ~ ~ minecraft:lava run scoreboard players set @s calculate_2 15

##Removing our damage score.
scoreboard players operation @s[tag=!boss] enemy_health -= @s calculate_2
scoreboard players operation @s[tag=forest_essence_controlled] enemy_health -= @s calculate_2
execute if entity @s[tag=boss] run scoreboard players operation $health boss -= @s calculate_2

##If we go under zero, set it to zero.
scoreboard players set @s[scores={enemy_health=..-1}] enemy_health 0


##Summoning damage indicator
summon minecraft:armor_stand ~ ~1.75 ~ {CustomNameVisible:0b,Tags:["damage_indicator","needs_name","on_death_timer"],Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b}
##Showing how much damage was dealt.
loot spawn 0 0 0 loot game:damage_dealt

##Copying the sign to our namee
data modify entity @e[type=minecraft:armor_stand,tag=needs_name,sort=nearest,limit=1] CustomName set from entity @e[type=minecraft:item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:redstone"}}] Item.components."minecraft:custom_name"

##Enabling custom name CustomNameVisible
data modify entity @e[type=minecraft:armor_stand,tag=needs_name,sort=nearest,limit=1] CustomNameVisible set value 1b

##Killing the redstone
kill @e[type=minecraft:item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:redstone"}}]

##Setting damage indicator
scoreboard players set @e[type=minecraft:armor_stand,tag=needs_name] death_timer 15

##Setting death timer
scoreboard players set @e[type=minecraft:armor_stand,tag=needs_name] damage_timer 10

##rem0oving needs name tag
tag @e[type=minecraft:armor_stand,tag=needs_name,sort=nearest,limit=1] remove needs_name

##Reupdating the custom name
function game:enemy/update_name

execute if entity @s[scores={enemy_health=0}] run function game:enemy/die

return 1