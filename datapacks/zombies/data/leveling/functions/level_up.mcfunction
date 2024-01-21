# called to level us up

# adding score
scoreboard players add @s level 1


# getting our new requirement
scoreboard players operation @s xp -= @s xp_requireement
scoreboard players operation @s xp_requirement *= $125 number
# sounds
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.6
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.2 0.2 0.2 0.5 25

