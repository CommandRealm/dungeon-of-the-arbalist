##Called when area_2 is opened

tag @e[type=marker,tag=area_11] add unlocked
tag @e[type=marker,tag=area_11] add boss_room_spawnpoint


##Giant
summon giant 4984 69 75 {Invulnerable:1b,Tags:["start_boss_fight_button","die_between_games"],ActiveEffects:[{Id:14b,Amplifier:0,Duration:100000000,ShowParticles:false}],PersistenceRequired:1b,Silent:1b,HandItems:[{id:"minecraft:chiseled_nether_bricks",Count:1b},{}]}
team join collision @e[type=giant,tag=start_boss_fight_button]

##Summoning aec for marking the starting area.
summon area_effect_cloud 4984 78 75 {Tags:["raycast","start_boss_fight","die_between_games"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}


##updating objective
scoreboard players set @a[tag=playing] objective 4
execute as @a[tag=playing,gamemode=adventure] at @s run function game:adventure/new_objective