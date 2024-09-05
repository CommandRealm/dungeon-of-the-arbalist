##Called when there is an active shopkeeper

execute as @e[type=!minecraft:area_effect_cloud,tag=shopkeeper,tag=!enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=mechanics]

execute if score $mode settings matches 0 as @e[type=minecraft:pillager,tag=shopkeeper,tag=!enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=mechanics]
execute if score $mode settings matches 1 as @e[type=minecraft:witch,tag=shopkeeper,tag=!enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=mechanics]
execute if score $mode settings matches 2 as @e[type=minecraft:vindicator,tag=shopkeeper,tag=!enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=mechanics]


execute if score $mode settings matches 0 as @e[type=minecraft:pillager,tag=shopkeeper,tag=!enemy,nbt={HurtTime:10s}] at @s run function game:shops/shopkeeper/check_take_damage
execute if score $mode settings matches 1 as @e[type=minecraft:witch,tag=shopkeeper,tag=!enemy,nbt={HurtTime:10s}] at @s run function game:shops/shopkeeper/check_take_damage
execute if score $mode settings matches 2 as @e[type=minecraft:vindicator,tag=shopkeeper,tag=!enemy,nbt={HurtTime:10s}] at @s run function game:shops/shopkeeper/check_take_damage

# particles on angry shopkeepers
execute at @e[type=minecraft:pillager,tag=shopkeeper,team=enemy] run particle minecraft:angry_villager ~ ~1 ~ 0.2 0.2 0.2 0.25 1
return 1