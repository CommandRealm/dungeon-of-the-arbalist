##called for the early generation end



##Marking hallways.
execute as @e[type=area_effect_cloud,tag=!base_generation_marker,tag=generation_marker] at @s align xz positioned ~-18.5 62 ~0 run summon marker ~ ~ ~ {Tags:["doorway","die_between_games","east_west"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=!base_generation_marker,tag=generation_marker] at @s align xz positioned ~0 62 ~18.5 run summon marker ~ ~ ~ {Tags:["doorway","die_between_games","north_south"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

##


##Determining which miniboss cube should have the key
execute store result score $miniboss_key game run loot insert 0 1 0 loot random:2

##setting up minibosses.
execute at @e[type=area_effect_cloud,tag=generation_marker,x=2000,y=66,z=0,sort=nearest,limit=1] as @e[type=area_effect_cloud,tag=generation_marker,distance=2..60,sort=random,limit=2] at @s run function game:default/generation/miniboss_cube

##Setting up bosses
execute as @e[type=area_effect_cloud,tag=generation_marker,x=2000,y=66,z=0,sort=nearest,limit=1] at @s run function game:default/generation/boss_cube
