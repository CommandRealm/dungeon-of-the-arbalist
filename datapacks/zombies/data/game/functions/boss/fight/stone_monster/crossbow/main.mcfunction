##Main function for the crossbow firing.
scoreboard players remove $crossbow boss 1

##sounds
execute if score $crossbow boss matches 80 run playsound minecraft:item.crossbow.loading_start master @a 4984 83 85 1000 0
execute if score $crossbow boss matches 77 run playsound minecraft:item.crossbow.loading_start master @a 4984 83 85 1000 0
execute if score $crossbow boss matches 74 run playsound minecraft:item.crossbow.loading_start master @a 4984 83 85 1000 0

execute if score $crossbow boss matches 71 run playsound minecraft:item.crossbow.loading_middle master @a 4984 83 85 1000 0
execute if score $crossbow boss matches 68 run playsound minecraft:item.crossbow.loading_middle master @a 4984 83 85 1000 0
execute if score $crossbow boss matches 65 run playsound minecraft:item.crossbow.loading_middle master @a 4984 83 85 1000 0

execute if score $crossbow boss matches 62 run playsound minecraft:item.crossbow.loading_end master @a 4984 83 85 1000 0
execute if score $crossbow boss matches 59 run playsound minecraft:item.crossbow.loading_end master @a 4984 83 85 1000 0
execute if score $crossbow boss matches 56 run playsound minecraft:item.crossbow.loading_end master @a 4984 83 85 1000 0


execute if score $crossbow boss matches 30 run playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 0.67
execute if score $crossbow boss matches 30 run summon minecraft:arrow 4984 85.67 81 {Motion:[0.0d,0.0d,-1.5d],Tags:["crossbow_purchasable_arrow","die_between_games"]}

execute if score $crossbow boss matches 27 run function game:boss/fight/stone_monster/crossbow/arrow_hit

execute if score $crossbow boss matches 0 if score $platform_damage boss matches 1 run function game:boss/fight/stone_monster/crossbow/create_marker