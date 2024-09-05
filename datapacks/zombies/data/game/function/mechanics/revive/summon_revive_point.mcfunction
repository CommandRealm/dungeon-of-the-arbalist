##Called to summon our revive point.

tag @e[tag=needs_adjustments] remove needs_adjustments


##summoning aec so we can find it later.
summon minecraft:area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","revive_aec","needs_adjustments"]}


##setting revive timer
execute if score $difficulty settings matches 0 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] revive_time 1600
execute if score $difficulty settings matches 1 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] revive_time 1400
execute if score $difficulty settings matches 2 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] revive_time 1200
execute if score $difficulty settings matches 3 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] revive_time 1000
execute if score $difficulty settings matches 4 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] revive_time 800
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] revive_second 20

##moving it
execute store result entity @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] Pos[0] double 0.01 run scoreboard players get @s death_pos_x
execute store result entity @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] Pos[1] double 0.01 run scoreboard players get @s death_pos_y
execute store result entity @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] Pos[2] double 0.01 run scoreboard players get @s death_pos_z

##giving it our id
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] id = @s id


summon minecraft:armor_stand 0 0 0 {Tags:["die_between_games","revive_point","needs_adjustments"],NoBasePlate:1b,ShowArms:1b,Invulnerable:1b,Marker:1b,Pose:{Body:[4.0f,0.0f,0.0f],Head:[42.0f,0.0f,0.0f],LeftLeg:[345.0f,0.0f,0.0f],RightLeg:[17.0f,0.0f,0.0f],LeftArm:[301.0f,0.0f,347.0f],RightArm:[320.0f,360.0f,26.0f]},DisabledSlots:16191}


##Setting our armor.
data modify entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]

##hand items
data modify entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] HandItems[0] set from entity @s SelectedItem
data modify entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] HandItems[1] set from entity @s Inventory[{Slot:-106b}]


loot replace entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] armor.head loot game:head



##Moving armor_stand
execute store result entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] Pos[0] double 0.01 run scoreboard players get @s death_pos_x
execute store result entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] Pos[1] double 0.01 run scoreboard players get @s death_pos_y
execute store result entity @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] Pos[2] double 0.01 run scoreboard players get @s death_pos_z

##copying our id
scoreboard players operation @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] id = @s id


##Teleporting into the ground so it's like they're sitting
execute as @e[type=minecraft:armor_stand,tag=needs_adjustments,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1]


##If we died in lava or fell in the void 
execute at @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] if block ~ ~ ~ minecraft:lava run function game:mechanics/revive/relocate_revive_point
execute at @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] unless block ~ ~ ~ minecraft:lava if block ~ ~-1 ~ minecraft:lava run function game:mechanics/revive/relocate_revive_point

execute as @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] at @s if entity @s[y=30,distance=..20] run function game:mechanics/revive/relocate_revive_point

execute as @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,limit=1] at @s if score $mode settings matches 2 if entity @s[y=20,distance=..25] run function game:mechanics/revive/relocate_revive_point

##Setting AEC score
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,tag=revive_aec,limit=1] revive_progress 0
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,tag=revive_aec,limit=1] revive_compare 0

##Summoning text AEC
execute at @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,tag=revive_aec,limit=1] run summon minecraft:area_effect_cloud ~ ~2.0 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","revive_name_text","needs_adjustments"],CustomNameVisible:1b,CustomName:'""'}

#swapping teams
team join yellow @s

loot spawn 0 0 0 loot game:name/dead_player
execute as @e[type=minecraft:area_effect_cloud,tag=revive_name_text,tag=needs_adjustments,sort=nearest,limit=1] at @s run data modify entity @s CustomName set from entity @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block"}}] Item.components."minecraft:custom_name"
kill @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,nbt={Item:{id:"minecraft:gold_block"}}]

##team
team join fallen @s

##Summoning remaining time
execute at @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,tag=revive_aec,limit=1] run summon minecraft:area_effect_cloud ~ ~1.75 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","revive_time_text","needs_adjustments"],CustomNameVisible:1b,CustomName:'{"color":"gray","extra":[{"color":"green","text":"Revive within "},{"bold":true,"color":"dark_green","text":"40"},{"color":"green","text":" seconds."},{"color":"gray","text":" -"}],"text":"- "}'}

execute at @e[type=minecraft:area_effect_cloud,tag=needs_adjustments,tag=revive_aec,limit=1] run summon minecraft:area_effect_cloud ~ ~1.5 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["die_between_games","revive_progress_text","needs_adjustments"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gray","text":">>>>>>>>"}'}



##removing tag
tag @e[type=minecraft:armor_stand,tag=needs_adjustments] remove needs_adjustments
tag @e[type=minecraft:area_effect_cloud,tag=needs_adjustments] remove needs_adjustments

return 1