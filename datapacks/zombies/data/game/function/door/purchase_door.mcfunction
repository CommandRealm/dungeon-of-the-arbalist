##Called to purchase the door.

##Subtracting our treasure (unless we used a key.)
execute unless score @s drop_key matches 1.. run scoreboard players operation @s remove_treasure = @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] price_increment
execute unless score @s drop_key matches 1.. run function game:mechanics/lose_treasure
execute unless score @s drop_key matches 1.. run scoreboard players operation @s global_spent += @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] price_increment
execute unless score @s drop_key matches 1.. run scoreboard players operation @s local_spent += @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] price_increment

execute if score @s drop_key matches 1.. as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s run scoreboard players operation @s price_increment = @s price_left

##Subtracting door price remaining.
execute as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s run scoreboard players operation @s price_left -= @s price_increment

##Making sure that the increment is still correct.
execute as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left < @s price_increment run scoreboard players operation @s price_increment = @s price_left
execute as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s run scoreboard players operation $calculate calculate = @s price_increment
execute as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s run scoreboard players operation $calculate calculate -= @s price_left
execute as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score $calculate calculate matches -2 run scoreboard players add @s price_increment 2

##Updating UI of purchasable door texts
tag @e[type=minecraft:area_effect_cloud,distance=..10,tag=door_text] add temporary_tag
execute as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if entity @s[tag=default_door] run function game:door/update_name
execute if score $mode settings matches 0 as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if entity @s[tag=dark_door] run function game:default/door/late_generation/update_dark_door_name
execute if score $mode settings matches 0 as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if entity @s[tag=boss_door] run function game:default/door/late_generation/update_boss_door_name



##Opening door (in the default mode)
execute unless score $difficulty settings matches -1 if score $mode settings matches 0 as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 unless entity @s[tag=boss_door] unless entity @s[tag=dark_door] run advancement grant @p[tag=temporary_tag,tag=!tutorial] only advancements:game-spruce_door
execute unless score $difficulty settings matches -1 if score $mode settings matches 0 as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 unless entity @s[tag=boss_door] unless entity @s[tag=default_door] run advancement grant @p[tag=temporary_tag,tag=!tutorial] only advancements:game-dark_door
execute unless score $difficulty settings matches -1 if score $mode settings matches 0 as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 unless entity @s[tag=dark_door] unless entity @s[tag=default_door] run advancement grant @p[tag=temporary_tag,tag=!tutorial] only advancements:game-boss_door


execute if score $mode settings matches 0 as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 unless entity @s[tag=boss_door] run function game:default/door/open
execute if score $mode settings matches 0 as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 if entity @s[tag=boss_door] run function game:default/door/boss_door_open

##OPening door adventure
execute if score $mode settings matches 1.. unless entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=raycast,tag=crossbow_purchasable] as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 run function game:adventure/door/open
execute if score $mode settings matches 1 if entity @e[type=minecraft:area_effect_cloud,distance=..10,tag=raycast,tag=crossbow_purchasable] as @e[type=minecraft:marker,tag=raycast,tag=doorway,sort=nearest,limit=1] at @s if score @s price_left matches ..0 run function game:boss/fight/stone_monster/crossbow/purchase

##Sound/particle
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1.25
execute if score $mode settings matches 0 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s if entity @s[tag=east_west] run particle minecraft:block{block_state:{Name:"minecraft:spruce_planks"}} ~ ~2 ~ 0.75 4 2 0.5 100
execute if score $mode settings matches 0 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s if entity @s[tag=north_south] run particle minecraft:block{block_state:{Name:"minecraft:spruce_planks"}} ~ ~2 ~ 2 4 0.75 0.5 100


tag @e[type=minecraft:area_effect_cloud,distance=..10,tag=door_text] remove temporary_tag

##if we used a key, kill a nearby one and reset our score
execute if score @s drop_key matches 1.. positioned ~ ~1 ~ run kill @e[type=minecraft:item,tag=!shop_item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:tripwire_hook"}}]

##sound for if we used the key
execute if score @s drop_key matches 1.. run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.67
##reset
scoreboard players reset @s drop_key
return 1