##called by us (the shopkeeper) when we take damage

scoreboard players add @s attack 1

##If we've been hit more than three times, convert all in the room to an enemy (the 10 cap is a just in case thing cause it gets changed when they are converted and they shouldn't activate anymore.)
execute if score $mode settings matches 0 if score @s attack matches 5..10 at @e[type=area_effect_cloud,tag=generation_marker,limit=1,sort=nearest] positioned ~-16 ~-15 ~-16 as @e[tag=shopkeeper,dx=31,dy=31,dz=31,team=!enemy] at @s run function game:shops/shopkeeper/convert
execute unless score $mode settings matches 0 if score @s attack matches 5..10 run function game:shops/shopkeeper/convert

##sounds and particles
particle angry_villager ~ ~1 ~ 0.4 0.8 0.4 0.33 20

playsound minecraft:entity.pillager.hurt master @a ~ ~ ~ 1 0.8

