##Called when area_6b is opened

tag @e[type=marker,tag=area_7] add unlocked
tag @e[type=marker,tag=area_7] add boss_room_spawnpoint

##Giant
summon giant 3160 52 261 {Invulnerable:1b,Tags:["start_boss_fight_button","die_between_games"],ActiveEffects:[{Id:14b,Amplifier:0,Duration:100000000,ShowParticles:false}],PersistenceRequired:1b,Silent:1b,HandItems:[{id:"minecraft:chiseled_nether_bricks",Count:1b},{}]}
team join collision @e[type=giant,tag=start_boss_fight_button]

##Summoning aec for marking the starting area.
summon area_effect_cloud 3160 52 261 {Tags:["raycast","start_boss_fight","die_between_games"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}


##bridge and portal
clone 3146 26 134 3150 33 160 3158 53 214
clone 3158 42 259 3162 42 263 3158 52 259