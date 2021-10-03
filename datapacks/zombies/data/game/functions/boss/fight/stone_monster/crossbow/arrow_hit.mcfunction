kill @e[type=arrow,tag=crossbow_purchasable_arrow]
execute at @e[type=wither_skeleton,tag=boss] run particle minecraft:lava ~ ~ ~ 0 0 0 0.5 100
execute at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
scoreboard players add $platform_damage boss 1
execute if score $platform_damage boss matches 1 run clone 4981 113 73 4987 117 77 4981 82 73
execute if score $platform_damage boss matches 1 run scoreboard players operation $health boss = $three_quarters_health boss
execute if score $platform_damage boss matches 1 as @e[type=wither_skeleton,tag=boss] at @s run tp @s ~ ~-0.5 ~
execute if score $platform_damage boss matches 2 run function game:boss/fight/stone_monster/start_phase_2
execute as @e[type=wither_skeleton,tag=boss,limit=1] at @s run function game:boss/fight/stone_monster/take_damage
