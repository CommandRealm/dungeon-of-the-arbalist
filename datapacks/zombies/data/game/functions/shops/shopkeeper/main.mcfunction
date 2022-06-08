##Called when there is an active shopkeeper

execute as @e[type=!area_effect_cloud,tag=shopkeeper,tag=!enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=mechanics]

execute if score $mode settings matches 0 as @e[type=pillager,tag=shopkeeper,tag=!enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=mechanics]
execute if score $mode settings matches 1 as @e[type=witch,tag=shopkeeper,tag=!enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=mechanics]
execute if score $mode settings matches 2 as @e[type=vindicator,tag=shopkeeper,tag=!enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=mechanics]


execute if score $mode settings matches 0 as @e[type=pillager,tag=shopkeeper,tag=!enemy,nbt={HurtTime:10s}] at @s run function game:shops/shopkeeper/check_take_damage
execute if score $mode settings matches 1 as @e[type=witch,tag=shopkeeper,tag=!enemy,nbt={HurtTime:10s}] at @s run function game:shops/shopkeeper/check_take_damage
execute if score $mode settings matches 2 as @e[type=vindicator,tag=shopkeeper,tag=!enemy,nbt={HurtTime:10s}] at @s run function game:shops/shopkeeper/check_take_damage
