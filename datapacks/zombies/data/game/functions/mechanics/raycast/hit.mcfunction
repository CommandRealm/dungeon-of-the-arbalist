##Called when we're looking at something with a raycast tag.

##Seeing what we hit
tag @e[sort=nearest,limit=1,tag=raycast,tag=!skip_raycast] add hit
##If we hit a door.
execute if entity @e[tag=hit,sort=nearest,limit=1,tag=doorway] run function game:door/hit


##Upgrade
execute if entity @e[tag=hit,sort=nearest,limit=1,tag=upgrade_spot] run function game:mechanics/upgrade/hit_raycast


##Purchasable item
execute if entity @e[type=item,tag=shop_item,sort=nearest,limit=1,tag=hit] unless entity @s[tag=in_boss_room] run function game:shops/raycast/continue
execute if entity @e[type=item,tag=shop_item,sort=nearest,limit=1,tag=hit] if entity @s[tag=!temporary_tag] run tag @e[type=item,tag=shop_item,distance=..3] add skip_raycast
tag @s[tag=!temporary_tag] remove shown_item_message
scoreboard players reset @s[tag=!temporary_tag] desc_delay

##If it's the start boss fight button
execute if entity @e[tag=hit,tag=start_boss_fight,type=area_effect_cloud] run function game:boss/prefight/hit


##Adding temporary tag
tag @s add temporary_tag

##removing hit
tag @e[tag=hit] remove hit