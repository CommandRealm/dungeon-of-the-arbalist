##Summoning a wave 1 spawnpoint

summon marker ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["zombie_spawnpoint","die_between_games","needs_initialization"]}
scoreboard players set @e[type=marker,tag=needs_initialization,limit=1] wave_id 3
tag @e[type=marker,tag=needs_initialization,limit=1] remove needs_initialization