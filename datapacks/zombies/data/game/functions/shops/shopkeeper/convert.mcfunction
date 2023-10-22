##called to convert ourself to an enemy


item replace entity @s[type=pillager] weapon.mainhand with crossbow{Enchantments:[{id:"minecraft:quick_charge",lvl:4},{id:"minecraft:multishot",lvl:1}]}
execute if score $difficulty settings matches 3.. run item replace entity @s[type=pillager] weapon.offhand with tipped_arrow{custom_potion_effects:[{id:"minecraft:instant_damage",amplifier:1,duration:1}],CustomPotionColor:7424817} 64
execute if score $difficulty settings matches 2 run item replace entity @s[type=pillager] weapon.offhand with tipped_arrow{custom_potion_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}],CustomPotionColor:7424817} 64
execute if score $difficulty settings matches ..1 run item replace entity @s[type=pillager] weapon.offhand with arrow
attribute @s[type=pillager] generic.knockback_resistance base set 1.0
effect give @s speed 1000000 0 true
item replace entity @s[type=vindicator] weapon.mainhand with iron_axe

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
execute as @e[type=item,tag=shop_item,sort=nearest,limit=1,distance=..10] at @s as @e[type=item,tag=shop_item,sort=nearest,limit=5,distance=..6] at @s run scoreboard players operation @s id = $shopkeeper_id id

# tagging players to trigger more shopkeepers
execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 as @a[tag=playing,gamemode=adventure,team=game,dx=31,dy=31,dz=31,tag=!anger_shopkeepers] at @s run function game:shops/shopkeeper/steal/tag_player
execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 unless entity @a[tag=playing,gamemode=adventure,team=game,dx=31,dy=31,dz=31,tag=!anger_shopkeepers] as @p[tag=playing,gamemode=adventure,team=game] unless entity @s[tag=anger_shopkeepers] run function game:shops/shopkeeper/steal/tag_player

scoreboard players set @s attack 100