##Called when we're looking at something with a raycast tag.

##Seeing what we hit
tag @e[tag=raycast,tag=!skip_raycast,sort=nearest,limit=1] add hit
##If we hit a door.
execute if entity @e[tag=hit,tag=doorway,sort=nearest,limit=1] run function game:door/hit


##Upgrade
execute if entity @e[tag=hit,tag=upgrade_spot,sort=nearest,limit=1] run function game:mechanics/upgrade/hit_raycast


##Purchasable item
execute if entity @e[type=minecraft:item,tag=shop_item,tag=hit,sort=nearest,limit=1] unless entity @s[tag=in_boss_room] run function game:shops/raycast/continue
execute if entity @e[type=minecraft:item,tag=shop_item,tag=hit,sort=nearest,limit=1] if entity @s[tag=!temporary_tag] run tag @e[type=minecraft:item,distance=..3,tag=shop_item] add skip_raycast
tag @s[tag=!temporary_tag] remove shown_item_message
scoreboard players reset @s[tag=!temporary_tag] desc_delay

##If it's the start boss fight button
execute if entity @e[type=minecraft:area_effect_cloud,tag=hit,tag=start_boss_fight] run function game:boss/prefight/hit


##Adding temporary tag
tag @s add temporary_tag

##removing hit
tag @e[tag=hit] remove hit
return 1