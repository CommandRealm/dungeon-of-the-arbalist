##Called when the mummy fight is in progress
effect clear @a[tag=in_boss_room,tag=playing,gamemode=adventure] wither 

##If this is phase 2, light the boss on fire.
execute if score $phase boss matches 2 at @e[type=wither_skeleton,tag=boss,limit=1] run particle lava ~ ~1 ~ 0 0.1 0 0.15 5
execute if score $phase boss matches 2 at @e[type=wither_skeleton,tag=boss,limit=1] run particle flame ~ ~1 ~ 0 0.1 0 0.35 1