##Called when the mummy fight is in progress
effect clear @a[gamemode=adventure,tag=in_boss_room,tag=playing] minecraft:wither

##If this is phase 2, light the boss on fire.
execute if score $phase boss matches 2 at @e[type=minecraft:wither_skeleton,tag=boss,limit=1] run particle minecraft:lava ~ ~1 ~ 0 0.1 0 0.15 5
execute if score $phase boss matches 2 at @e[type=minecraft:wither_skeleton,tag=boss,limit=1] run particle minecraft:flame ~ ~1 ~ 0 0.1 0 0.35 1
return 1