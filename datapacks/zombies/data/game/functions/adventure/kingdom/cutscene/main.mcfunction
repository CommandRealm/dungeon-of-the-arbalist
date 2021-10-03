##Main cutscene function.

##Summoning armor stand
execute if score $time game matches 15 run function game:adventure/kingdom/cutscene/summon
execute if score $time game matches 20 run gamemode adventure @a[tag=playing]


##spectate
execute if score $time game matches 15.. as @a[tag=playing,gamemode=spectator] at @s run spectate @e[type=armor_stand,tag=dungeon_cutscene_camera,sort=nearest,limit=1]

##gamemode
execute unless score $time game matches 170..220 run gamemode spectator @a[tag=playing,gamemode=!spectator]

execute if score $time game matches 81..121 as @e[type=armor_stand,tag=dungeon_cutscene_camera,sort=nearest,limit=1] at @s run tp @s ~ ~0.02 ~0.01

execute if score $time game matches 170 run function game:adventure/kingdom/cutscene/find_seats

##Pillager noises
execute if score $time game matches 50 at @a[tag=playing,limit=1] run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 1 0.9
execute if score $time game matches 45..49 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~5
execute if score $time game matches 50..59 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~-5
execute if score $time game matches 60..64 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~5

##Pillager noises
execute if score $time game matches 90 at @a[tag=playing,limit=1] run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 1 0.9
execute if score $time game matches 85..89 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~5
execute if score $time game matches 90..99 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~-5
execute if score $time game matches 100..104 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~5

##Pillager noises
execute if score $time game matches 130 at @a[tag=playing,limit=1] run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 1 0.9
execute if score $time game matches 125..129 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~5 ~
execute if score $time game matches 130..139 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~-5 ~
execute if score $time game matches 140..144 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~5 ~




##Pillager noises
execute if score $time game matches 170 run item replace entity @e[type=pillager,tag=cutscene_entity] weapon.mainhand with crossbow
execute if score $time game matches 170 at @a[tag=playing,limit=1] run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 1 0.9
execute if score $time game matches 165..169 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~5
execute if score $time game matches 170..179 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~-5
execute if score $time game matches 180..184 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~ ~5

##Pillager noises
execute if score $time game matches 200 at @a[tag=playing,limit=1] run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 1 0.9
execute if score $time game matches 195..199 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~-5 ~
execute if score $time game matches 200..209 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~5 ~
execute if score $time game matches 210..214 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~-5 ~

##Ambience sounds
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75
execute if score $time game matches 15 as @a[tag=playing] at @s run playsound minecraft:music.nether.nether_wastes master @a[tag=playing] ~ ~ ~ 10000 1.75


execute if score $time game matches 215 positioned 3145 74 -7 rotated 33 -20 positioned ^ ^ ^60 run tp @e[type=armor_stand,tag=dungeon_cutscene_camera] ~ ~ ~ 23 -10
execute if score $time game matches 222 run gamemode adventure @a[tag=playing]


execute if score $time game matches 240..320 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s facing 3145 74 -7 run tp @s ^ ^ ^0.25
execute if score $time game matches 321..400 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s facing 3145 74 -7 run tp @s ^ ^ ^0.5
execute if score $time game matches 405..414 as @e[type=armor_stand,tag=dungeon_cutscene_camera] at @s run tp @s ~ ~ ~ ~-2 ~2

##Tping the teacher
execute if score $time game matches 380 run tp @e[type=pillager,tag=cutscene_entity] 3145 70 -2 180 -20
execute if score $time game matches 430 at @a[tag=playing,limit=1] run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 1 0.9
execute if score $time game matches 425..429 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~-5 ~
execute if score $time game matches 430..439 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~5 ~
execute if score $time game matches 440..444 as @e[type=pillager,tag=cutscene_entity] at @s run tp @s ~ ~ ~ ~-5 ~

execute if score $time game matches 400..464 as @e[type=pillager,tag=cutscene_entity] at @s run particle falling_dust black_concrete ~ ~6.5 ~ 0.25 0.25 0.25 0.15 20
execute if score $time game matches 400..464 as @e[type=pillager,tag=cutscene_entity] at @s run particle falling_dust yellow_concrete ~ ~6.5 ~ 0.25 0.25 0.25 0.15 10
execute if score $time game matches 400..464 as @e[type=pillager,tag=cutscene_entity] at @s run particle smoke ~ ~6.5 ~ 0.25 0.25 0.25 0.15 10
execute if score $time game matches 464 as @e[type=pillager,tag=cutscene_entity] at @s run summon lightning_bolt ~ ~ ~
execute if score $time game matches 464 at @e[type=pillager,tag=cutscene_entity] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["die_between_games","cutscene_upgrade"],ArmorItems:[{},{},{},{id:"minecraft:glowstone",Count:1b}],Motion:[0.0d,0.5d,-0.125d]}
execute if score $time game matches 464 at @e[type=pillager,tag=cutscene_entity] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["die_between_games","cutscene_upgrade"],ArmorItems:[{},{},{},{id:"minecraft:prismarine_bricks",Count:1b}],Motion:[0.225d,0.5d,-0.225d]}
execute if score $time game matches 464 at @e[type=pillager,tag=cutscene_entity] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["die_between_games","cutscene_upgrade"],ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}],Motion:[-0.225d,0.5d,-0.225d]}
execute if score $time game matches 464 run kill @e[type=pillager,tag=cutscene_entity]
##Exit
execute if score $time game matches 490 run function game:adventure/kingdom/cutscene/over