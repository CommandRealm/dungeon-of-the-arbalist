##Called to start the boss fight.




##Specific boss fight starts.
execute if score $boss boss matches 0 run function game:boss/fight/ravager/start
execute if score $boss boss matches 1 run function game:boss/fight/guardian/start
execute if score $boss boss matches 2 run function game:boss/fight/stray/start
execute if score $boss boss matches 3 run function game:boss/fight/magma_cube/start
execute if score $boss boss matches 4 run function game:boss/fight/forest_essence/start
execute if score $mode settings matches 1 run function game:boss/fight/stone_monster/start
execute if score $mode settings matches 2 run function game:boss/fight/mummy/start
effect give @e[tag=boss] resistance infinite 127 true


#Setting health
scoreboard players set @e[tag=boss] enemy_health 2140000000
execute if score $boss boss matches 0 run scoreboard players set @e[tag=boss,type=wither_skeleton] extra_damage 30
execute as @a[tag=playing,limit=5] at @s run scoreboard players add $health boss 2000

##Calculating when the boss should change phases.
scoreboard players operation $transform_point boss = $health boss
scoreboard players operation $transform_point boss /= $2 number

##calculating quarter health
scoreboard players operation $quarter_health boss = $health boss
scoreboard players operation $quarter_health boss /= $4 number

##Three quaters
scoreboard players operation $three_quarters_health boss = $quarter_health boss
scoreboard players operation $three_quarters_health boss *= $3 number

##team
team join enemy @e[tag=boss]

scoreboard players set $transform boss 0

##Editing the bossbar.
bossbar set game:boss color red
bossbar set game:boss style notched_10
execute store result bossbar game:boss max run scoreboard players get $health boss
execute store result bossbar game:boss value run scoreboard players get $health boss
bossbar set game:boss visible true
bossbar set game:boss players @a[x=0,y=66,z=0,distance=500..]

##Tagging it as started
scoreboard players set $started boss 1


##Sounds
execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 0.594604
execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 0.749154

##Title
title @a[tag=playing,tag=in_boss_room] title {"nbt":"name","storage":"game:boss","interpret":true}
title @a[tag=playing,tag=in_boss_room] subtitle {"nbt":"title","storage":"game:boss","interpret":true}

##Setting compare health
scoreboard players operation $compare_health boss = $health boss

##Setting the cooldown and other basic things
scoreboard players set $cooldown boss 200
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0

##Cloning the bridge
execute if score $mode settings matches 2 run fill 3158 53 214 3162 59 240 air destroy
execute if score $mode settings matches 2 run tp @a[x=3157,y=50,z=214,dx=6,dy=15,dz=26,tag=playing,gamemode=adventure] 3160 55 242

# setting health
scoreboard players set @e[tag=boss] enemy_loot_table 100 