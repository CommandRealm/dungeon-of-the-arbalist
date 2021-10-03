##called if there is an active fishing bobber


##Timer for fishing rods
scoreboard players add @e[type=fishing_bobber] attack 1
##Killing fishing rods attached to players
execute at @a[tag=playing] positioned ~ ~1 ~ run kill @e[type=fishing_bobber,dx=0,scores={attack=5..}]