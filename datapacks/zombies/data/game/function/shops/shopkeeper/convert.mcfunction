##called to convert ourself to an enemy


item replace entity @s[type=minecraft:pillager] weapon.mainhand with minecraft:crossbow[minecraft:enchantments={levels:{"minecraft:quick_charge":4,"minecraft:multishot":1}}]
execute if score $difficulty settings matches 3.. run item replace entity @s[type=minecraft:pillager] weapon.offhand with minecraft:tipped_arrow[minecraft:potion_contents={custom_color:7424817,custom_effects:[{id:"minecraft:instant_damage",amplifier:1b,duration:1}]}] 64
execute if score $difficulty settings matches 2 run item replace entity @s[type=minecraft:pillager] weapon.offhand with minecraft:tipped_arrow[minecraft:potion_contents={custom_color:7424817,custom_effects:[{id:"minecraft:instant_damage",duration:1}]}] 64
execute if score $difficulty settings matches ..1 run item replace entity @s[type=minecraft:pillager] weapon.offhand with minecraft:arrow
attribute @s[type=minecraft:pillager] minecraft:generic.knockback_resistance base set 1.0
effect give @s minecraft:speed 1000000 0 true
item replace entity @s[type=minecraft:vindicator] weapon.mainhand with minecraft:iron_axe

tag @s add enemy
scoreboard players set @s enemy_health 700
scoreboard players set @s enemy_loot_table -1
data modify entity @s NoAI set value 0b
tag @s add default_name

function game:enemy/initialize

# creating point to mark our items
scoreboard players add $shopkeeper_id id 1
scoreboard players operation @s id = $shopkeeper_id id

# finding the nearest five items
execute as @e[type=minecraft:item,distance=..10,tag=shop_item,sort=nearest,limit=1] at @s as @e[type=minecraft:item,distance=..6,tag=shop_item,sort=nearest,limit=5] at @s run scoreboard players operation @s id = $shopkeeper_id id

# tagging players to trigger more shopkeepers
execute at @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 as @a[gamemode=adventure,dx=31,dy=31,dz=31,tag=playing,tag=!anger_shopkeepers,team=game] at @s run function game:shops/shopkeeper/steal/tag_player
execute at @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 unless entity @a[gamemode=adventure,dx=31,dy=31,dz=31,tag=playing,tag=!anger_shopkeepers,team=game] as @p[gamemode=adventure,tag=playing,team=game] unless entity @s[tag=anger_shopkeepers] run function game:shops/shopkeeper/steal/tag_player

scoreboard players set @s attack 100
return 1