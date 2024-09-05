##Called when the bossfight is starting its cooldown.
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run summon minecraft:lightning_bolt ~ ~50 ~
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run summon minecraft:lightning_bolt ~ ~50 ~
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run summon minecraft:lightning_bolt ~ ~50 ~
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run summon minecraft:lightning_bolt ~ ~50 ~
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run summon minecraft:lightning_bolt ~ ~50 ~
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run summon minecraft:lightning_bolt ~ ~50 ~
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run summon minecraft:lightning_bolt ~ ~50 ~

tellraw @a[tag=playing] ["",{"text":"[","color":"dark_gray","bold":true,"type":"text"},{"text":"☠","color":"dark_red","bold":false,"type":"text"},{"text":"] ","color":"dark_gray","bold":true,"type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Boss ","color":"#ab0909","type":"text"},{"text":"Fight ","color":"#5a4f4f","bold":false,"type":"text"},{"text":"has begun.","color":"gray","type":"text"}]

execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0.65
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0.75
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0.85
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0.95

execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1.65
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1.75
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1.85
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1.95

execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0.65
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0.75
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0.85
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 0.95

execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1.65
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1.75
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1.85
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100 1.95

##starting the delay
scoreboard players operation $delay boss = $spawn_delay boss

##Particle
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run particle minecraft:block{block_state:{Name:"minecraft:chiseled_nether_bricks"}} ~ ~ ~ 1 1 1 0.00 500
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run particle minecraft:item{item:"minecraft:chiseled_nether_bricks"} ~ ~ ~ 0.5 0.5 0.5 0.3 100
execute at @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] run playsound minecraft:block.stone.place master @a ~ ~ ~

tp @e[type=minecraft:giant,tag=start_boss_fight_button] 0 0 0
kill @e[type=minecraft:giant,tag=start_boss_fight_button]
tag @e[type=minecraft:area_effect_cloud,tag=start_boss_fight] remove raycast
return 1