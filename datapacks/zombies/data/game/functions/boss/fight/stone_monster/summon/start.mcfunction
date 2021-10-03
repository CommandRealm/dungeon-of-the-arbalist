##CAlled to summon enemies in the first phase.



execute store result score $erodus_dir boss run loot insert 0 1 0 loot random:4
function random:reset_chest


execute if score $erodus_dir boss matches 0 run data modify entity @e[type=wither_skeleton,tag=boss,limit=1] Rotation[0] set value 0f
execute if score $erodus_dir boss matches 1 run data modify entity @e[type=wither_skeleton,tag=boss,limit=1] Rotation[0] set value 180f
execute if score $erodus_dir boss matches 2 run data modify entity @e[type=wither_skeleton,tag=boss,limit=1] Rotation[0] set value 90f
execute if score $erodus_dir boss matches 3 run data modify entity @e[type=wither_skeleton,tag=boss,limit=1] Rotation[0] set value 270f

execute as @e[type=wither_skeleton,tag=boss,limit=1] at @s positioned ^ ^ ^2 run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.15 50
execute as @e[type=wither_skeleton,tag=boss,limit=1] at @s positioned ^ ^ ^2 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 2


##Setting timer
scoreboard players set $attack boss 30

