##Main cutscene function.

##Forceload
execute if score $time game matches 1 run forceload add 1821 -131 1737 -231

##Summoning armor stand
execute if score $time game matches 5 run function game:default/cutscene/summon


##spectate
execute if score $time game matches 5.. as @a[tag=playing,gamemode=spectator] at @s run spectate @e[type=armor_stand,tag=dungeon_cutscene_camera,sort=nearest,limit=1]

##gamemode
gamemode spectator @a[tag=playing,gamemode=!spectator]


##Tps
execute if score $time game matches 5..49 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ~ ~.08 ~ ~ ~

execute if score $time game matches 70..80 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ~ ~ ~ ~ ~0.8

execute if score $time game matches 120..129 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s anchored eyes run tp @s ^ ^ ^0.1
execute if score $time game matches 130..145 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s anchored eyes run tp @s ^ ^ ^0.20
execute if score $time game matches 146..160 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s anchored eyes run tp @s ^ ^ ^0.25
execute if score $time game matches 161..170 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s anchored eyes run tp @s ^ ^ ^0.35
execute if score $time game matches 171..180 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s anchored eyes run tp @s ^ ^ ^0.45
execute if score $time game matches 181..200 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s anchored eyes run tp @s ^ ^ ^0.65
##execute if score $time game matches 251..270 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s anchored eyes run tp @s ^ ^ ^0.70



##Opening the door sounds
execute if score $time game matches 100 at @a[tag=playing,limit=1] run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.5
execute if score $time game matches 100 at @a[tag=playing,limit=1] run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.629961
execute if score $time game matches 100 at @a[tag=playing,limit=1] run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.749154



##Opening the door
execute if score $time game matches 110 run clone 1778 70 -146 1790 80 -142 1778 56 -177
execute if score $time game matches 110 at @a[tag=playing,limit=1] run playsound minecraft:block.metal.break master @a ~ ~ ~ 1 0

execute if score $time game matches 130 run clone 1778 70 -140 1790 80 -136 1778 56 -177
execute if score $time game matches 130 at @a[tag=playing,limit=1] run playsound minecraft:block.metal.break master @a ~ ~ ~ 1 0

execute if score $time game matches 150 run clone 1778 70 -133 1790 80 -129 1778 56 -177
execute if score $time game matches 150 at @a[tag=playing,limit=1] run playsound minecraft:block.metal.break master @a ~ ~ ~ 1 0


execute if score $time game matches 172 run effect give @a[tag=playing,limit=1] darkness infinite 0 true


##Ambience sounds
execute as @a[tag=playing,limit=1,sort=random] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @s ~ ~ ~ 0.1 2


##Exit
execute if score $time game matches 205 run function game:default/cutscene/over