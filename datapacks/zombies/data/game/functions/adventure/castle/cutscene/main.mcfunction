##Main cutscene function.

##Summoning armor stand
execute if score $time game matches 15 run function game:adventure/castle/cutscene/summon


##spectate
execute if score $time game matches 15.. as @a[tag=playing,gamemode=spectator] at @s run spectate @e[type=armor_stand,tag=dungeon_cutscene_camera,sort=nearest,limit=1]

##gamemode
gamemode spectator @a[tag=playing,gamemode=!spectator]


##Tps
execute if score $time game matches 5..49 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ^ ^ ^0.045
execute if score $time game matches 50..69 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ^ ^ ^0.065
execute if score $time game matches 70..89 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ^ ^ ^0.085
execute if score $time game matches 90..109 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ^ ^ ^0.105
execute if score $time game matches 110..137 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ^ ^ ^0.055 facing entity @e[type=wither_skeleton,tag=cutscene_entity,limit=1]

##Flipping the creature
execute if score $time game matches 138..178 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ^ ^ ^0.1 facing entity @e[type=wither_skeleton,tag=cutscene_entity,limit=1]
execute if score $time game matches 133 as @e[type=wither_skeleton,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~45 ~
execute if score $time game matches 138 as @e[type=wither_skeleton,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~135 ~

##Exclamation mark and run
execute if score $time game matches 153 as @e[type=wither_skeleton,tag=cutscene_entity] at @s run particle dripping_lava ~ ~3.25 ~ 0 0 0 0 25
execute if score $time game matches 153 as @e[type=wither_skeleton,tag=cutscene_entity] at @s run particle dripping_lava ~ ~4.0 ~ 0 0.15 0 0 100
execute if score $time game matches 153 as @a[tag=playing] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 0.75
execute if score $time game matches 158 run data modify entity @e[type=wither_skeleton,tag=cutscene_entity,limit=1] NoAI set value 0b
execute if score $time game matches 159..189 run data modify entity @e[type=wither_skeleton,tag=cutscene_entity,limit=1] Motion[0] set value -0.45d
execute if score $time game matches 159..189 run data modify entity @e[type=wither_skeleton,tag=cutscene_entity,limit=1] Rotation[0] set value 90f

##Closing the door.
execute if score $time game matches 182 run clone 4994 81 20 4993 85 22 4993 88 22
execute if score $time game matches 182 as @a[tag=playing] at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 0.5
execute if score $time game matches 182 as @a[tag=playing] at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 0.67

##Moving players to see the door
execute if score $time game matches 182..250 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ^0.1 ^ ^ facing entity @e[type=wither_skeleton,tag=cutscene_entity,limit=1]

##Looking down.
execute if score $time game matches 270..305 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ~ ~-0.035 ~ ~ ~2.5

##Ambience sounds
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.basalt_deltas master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.basalt_deltas master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.basalt_deltas master @a[tag=playing] ~ ~ ~ 10000 1.75


##Exit
execute if score $time game matches 310 run function game:adventure/castle/cutscene/over