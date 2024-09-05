##Called to purchase the door.

##Subtracting our treasure
scoreboard players operation @s remove_treasure = @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] item_price
function game:mechanics/lose_treasure
scoreboard players operation @s global_spent += @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] item_price
scoreboard players operation @s local_spent += @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] item_price


##giving us the item
setblock 0 2 0 minecraft:air
setblock 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:structure_void",count:1,Slot:0b}]} destroy
data modify block 0 2 0 Items[{Slot:0b}].id set from entity @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] Item.id
data modify block 0 2 0 Items[{Slot:0b}].components set from entity @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] Item.components
data modify block 0 2 0 Items[{Slot:0b}].count set from entity @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] Item.count

##second unless is for if it's a crossbow because we don't want to give ourself a crossbow.
execute unless block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:structure_void",count:1,Slot:0b}]} unless block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} run loot give @s mine 0 2 0 minecraft:stone[minecraft:custom_data={drop_contents:1b}]

##If it's a crossbow snag the id and set our reload (and remove specific effects)

##If we had the golden crossbow
execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} if score @s crossbow_id matches 39 run scoreboard players remove @s loot_multiplier 30
##Resetting life kills
execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} run scoreboard players reset @s life_kills
##general crossbow stuff
execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} run scoreboard players set @s arrow_delay 2
execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} run scoreboard players set @s quiver 0
execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} store result score @s crossbow_id run data get entity @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] Item.components."minecraft:custom_data".crossbow_id 1
execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} run item replace entity @s weapon.offhand with minecraft:air
execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} run clear @s minecraft:crossbow

##Updating our reached tier.
scoreboard players set @s[scores={crossbow_id=1..9,reached_tier=0}] reached_tier 1
scoreboard players set @s[scores={crossbow_id=10..27,reached_tier=..1}] reached_tier 2
scoreboard players set @s[scores={crossbow_id=28..,reached_tier=..2}] reached_tier 3

execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} unless entity @s[scores={crossbow_id=0}] run function game:mechanics/get_crossbow_details

execute if block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:crossbow",count:1,Slot:0b}]} run scoreboard players reset @s radioactive_miss

##advancement
execute unless score $difficulty settings matches -1 run advancement grant @s[tag=!tutorial] only advancements:game-shop

##function game:mechanics/get_crossbow_details

##removing the quantity of the item.
scoreboard players remove @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] item_quantity 1

# summong an item point so we can refill it
execute at @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["die_between_games","shop_item_point"]}


##If there is no more available for this item.
execute as @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] if score @s item_quantity matches ..0 run particle minecraft:cloud ~ ~ ~ 0 0 0 0.05 5
execute as @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] if score @s item_quantity matches ..0 run kill @s

##Sound/particle
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1.25

##happy villager sound
execute at @e[type=minecraft:pillager,distance=..8,tag=shopkeeper,sort=nearest,limit=1] run playsound minecraft:entity.pillager.celebrate master @a ~ ~ ~ 1 1


##If there are no more items left in this cube, update the map.
execute at @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1] positioned ~-16 ~-15 ~-16 unless entity @e[type=minecraft:item,dx=31,dy=31,dz=31,tag=shop_item] run tag @a remove holding_map

return 1