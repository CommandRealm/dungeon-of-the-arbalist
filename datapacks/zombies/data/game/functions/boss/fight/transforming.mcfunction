##Called to activate the cooldown for transforming.
scoreboard players remove $transform boss 1

##Specific bosses.
execute if score $boss boss matches 0 run function game:boss/fight/ravager/transforming
execute if score $boss boss matches 1 run function game:boss/fight/guardian/transforming
execute if score $boss boss matches 2 run function game:boss/fight/stray/transforming
execute if score $boss boss matches 3 run function game:boss/fight/magma_cube/transforming
execute if score $boss boss matches 4 run function game:boss/fight/forest_essence/transforming
execute if score $mode settings matches 2 run function game:boss/fight/mummy/transforming

##NoAI (it's constant so that ends of attacks don't disable it.)
execute as @e[tag=boss] at @s run data modify entity @s NoAI set value 1b


##Particles
execute as @e[type=area_effect_cloud,tag=spin] at @s positioned as @e[tag=boss] positioned ~ ~1 ~ run particle flame ^ ^ ^3 0.01 0.01 0.01 0.1 10
execute as @e[type=area_effect_cloud,tag=spin] at @s positioned as @e[tag=boss] positioned ~ ~1 ~ run particle flame ^ ^ ^-3 0.01 0.01 0.01 0.1 10

execute at @e[tag=boss,sort=arbitrary,limit=1] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.5
execute at @e[tag=boss,sort=arbitrary,limit=1] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.594604
execute at @e[tag=boss,sort=arbitrary,limit=1] run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.749154

##Lightning
execute if score $transform boss matches 50 at @e[limit=1,tag=boss] run summon lightning_bolt ~ ~50 ~
execute if score $transform boss matches 40 at @e[limit=1,tag=boss] run summon lightning_bolt ~ ~50 ~
execute if score $transform boss matches 35 at @e[limit=1,tag=boss] run summon lightning_bolt ~ ~50 ~
execute if score $transform boss matches 30 at @e[limit=1,tag=boss] run summon lightning_bolt ~ ~50 ~
execute if score $transform boss matches 25 at @e[limit=1,tag=boss] run summon lightning_bolt ~ ~50 ~
execute if score $transform boss matches 20 at @e[limit=1,tag=boss] run summon lightning_bolt ~ ~50 ~

execute if score $transform boss matches 50 at @e[limit=1,tag=boss] run particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.15 100
execute if score $transform boss matches 40 at @e[limit=1,tag=boss] run particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.15 100
execute if score $transform boss matches 35 at @e[limit=1,tag=boss] run particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.15 100
execute if score $transform boss matches 30 at @e[limit=1,tag=boss] run particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.15 100
execute if score $transform boss matches 25 at @e[limit=1,tag=boss] run particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.15 100
execute if score $transform boss matches 20 at @e[limit=1,tag=boss] run particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.15 100


##End
execute if score $transform boss matches 0 run function game:boss/fight/transform_end
