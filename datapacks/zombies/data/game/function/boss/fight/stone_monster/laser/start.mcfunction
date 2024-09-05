##Called to start the laser attack.

##Freeze
effect give @e[type=minecraft:wither_skeleton,tag=boss] minecraft:slowness 1000000 255 true

##Setting the delay to something ridiculous.
scoreboard players set $attack boss 2147483647
return 1