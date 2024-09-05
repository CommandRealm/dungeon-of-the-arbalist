##Called when the guardian is using its track attack
execute if score $attack boss matches 15.. as @e[type=minecraft:elder_guardian,tag=boss,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,tag=tracking] feet
execute if score $attack boss matches 15.. as @e[type=minecraft:elder_guardian,tag=boss,limit=1] at @s anchored eyes run function game:boss/fight/guardian/track/start_raycast
execute if score $attack boss matches 14 at @p[gamemode=adventure,tag=tracking,tag=playing] run function game:boss/fight/guardian/track/lock_position
execute if score $attack boss matches ..14 as @e[type=minecraft:elder_guardian,tag=boss,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=targeted_point,limit=1] feet
execute if score $attack boss matches ..14 as @e[type=minecraft:elder_guardian,tag=boss,limit=1] at @s anchored eyes run function game:boss/fight/guardian/track/start_secondary_raycast
execute if score $attack boss matches 1 as @e[type=minecraft:area_effect_cloud,tag=targeted_point,limit=1] at @s run function game:boss/fight/guardian/track/shoot
return 1