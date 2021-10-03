##Called when the circle attack is in progress.

##Creating central particles
particle minecraft:nautilus 2000.0 63.5 0.0 0.25 0.25 0.25 0.1 10

##Marker particles
execute if score $attack boss matches 160.. positioned 2000.0 63.5 0.0 rotated as @e[type=area_effect_cloud,tag=guardian_aec] rotated ~ 0 run function game:boss/fight/guardian/circle/start_marker_raycast

##Rotation
execute if score $stat boss matches 0 if score $attack boss matches ..159 as @e[type=area_effect_cloud,tag=guardian_aec] at @s run tp @s ~ ~ ~ ~2.5 ~
execute if score $stat boss matches 1 if score $attack boss matches ..159 as @e[type=area_effect_cloud,tag=guardian_aec] at @s run tp @s ~ ~ ~ ~-2.5 ~

##dangerous particles
execute if score $attack boss matches ..159 positioned 2000.0 63.5 0.0 rotated as @e[type=area_effect_cloud,tag=guardian_aec] rotated ~ 0 run function game:boss/fight/guardian/circle/start_raycast

##End.
execute if score $attack boss matches 1 run function game:boss/fight/guardian/circle/stop

##Particles
execute at @e[type=elder_guardian,tag=boss] run particle smoke ~ ~1 ~ 2 2 2 0.15 10