##Main function for if the stone monster is in the game.

execute if score $crossbow boss matches 1.. run function game:boss/fight/stone_monster/crossbow/main

##If this is phase 1, play particles around the crossbow
execute if score $phase boss matches 1 run particle dust 0.878 0.624 0.063 1 4984 83 84 2 2 2 0.25 10 force

##When the monster is hit
execute as @e[type=wither_skeleton,tag=boss,nbt={HurtTime:9s}] at @s run function game:boss/fight/stone_monster/take_damage

##Clearing wither
effect clear @a[tag=playing,tag=in_boss_room] wither

##Particles
execute at @e[type=silverfish,tag=boss_block_base] run particle block iron_block ~ ~.75 ~ 0.25 0.25 0.25 0.35 15

##Activating the crossbow
execute as @e[type=area_effect_cloud,tag=crossbow_purchasable] at @s unless score $crossbow boss matches 1.. if entity @a[tag=playing,nbt={Inventory:[{id:"minecraft:spectral_arrow"}]},distance=..7,gamemode=adventure] run function game:boss/fight/stone_monster/crossbow/activate