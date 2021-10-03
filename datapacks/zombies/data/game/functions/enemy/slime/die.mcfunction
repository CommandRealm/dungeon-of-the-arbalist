particle dust 0.882 0.941 0.051 1 ~ ~ ~ 1.5 1.5 1.5 0.15 25
particle dust 0.941 0.631 0.051 1 ~ ~ ~ 1.5 1.5 1.5 0.15 10
playsound minecraft:entity.bee.hurt master @a ~ ~ ~ 1.5 0.67
playsound minecraft:entity.bee.hurt master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.bee.hurt master @a ~ ~ ~ 1.5 0.75

##damage
effect give @a[distance=..3,tag=playing,gamemode=adventure] instant_damage 1 0 true

#Summon smaller slimes
    execute if score @s slime_sizes matches 4 run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:3,PersistenceRequired:1b}
    execute if score @s slime_sizes matches 4 run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:3,PersistenceRequired:1b}

    execute if score @s slime_sizes matches 3 run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:2,PersistenceRequired:1b}
    execute if score @s slime_sizes matches 3 run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:2,PersistenceRequired:1b}

    execute if score @s slime_sizes matches 2 run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:1,PersistenceRequired:1b}
    execute if score @s slime_sizes matches 2 run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:1,PersistenceRequired:1b}

    execute if score @s slime_sizes matches 1 run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:0,PersistenceRequired:1b}
    execute if score @s slime_sizes matches 1 run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:0,PersistenceRequired:1b}


    scoreboard players set @e[type=slime,tag=slime_miniboss,tag=needs_initialization,nbt={Size:3}] enemy_health 400
    scoreboard players set @e[type=slime,tag=slime_miniboss,tag=needs_initialization,nbt={Size:2}] enemy_health 300
    scoreboard players set @e[type=slime,tag=slime_miniboss,tag=needs_initialization,nbt={Size:1}] enemy_health 200
    scoreboard players set @e[type=slime,tag=slime_miniboss,tag=needs_initialization,nbt={Size:0}] enemy_health 100

execute as @e[type=slime,tag=needs_initialization] at @s run function game:enemy/initialize

    execute as @e[type=slime,tag=slime_miniboss] run attribute @s generic.follow_range base set 1024

    execute as @e[type=slime,tag=slime_miniboss] at @s store result score @s slime_sizes run data get entity @s Size


##Tping the slime away
tp @s 0 0 0