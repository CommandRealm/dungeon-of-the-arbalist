# main function that is called twice a second

# counting shopkeepers and comparing it to the previous tick
execute store result score $enemy_shopkeepers count if entity @e[tag=shopkeeper,team=enemy]
execute unless score $enemy_shopkeepers count = $last_enemy_shopkeepers count as @e[type=item,tag=shop_item,scores={id=1..}] at @s run function game:shops/shopkeeper/steal/check_ids
execute store result score $last_enemy_shopkeepers count if entity @e[tag=shopkeeper,team=enemy]


# particles for free items
execute at @e[type=item,tag=free_shop_item] run function game:shops/shopkeeper/steal/free_item_effects

# seeing if the player is in a room with an unangered shopkeeper
# execute as @a[tag=playing,team=game,gamemode=adventure,tag=anger_shopkeepers] at @s at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 if entity @s[dx=31,dy=31,dz=31] if entity @e[tag=shopkeeper,team=!enemy,dx=31,dy=31,dz=31] at @s run function game:shops/shopkeeper/steal/convert_due_to_proximity

# if there are lobbers
execute as @e[type=wither_skeleton,tag=lobber,scores={attack=..-60}] at @s run function game:enemy/volition/lobber/pickup/check

##Unlocking journal entries.
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:zombie=false}] at @s if entity @e[type=zombie,tag=base_zombie,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:zombie
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:spider=false}] at @s if entity @e[type=cave_spider,tag=cave_spider,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:spider
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:knight=false}] at @s if entity @e[type=zombie,tag=knight_zombie,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:knight
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:brute=false}] at @s if entity @e[type=zombie,tag=powerful_zombie,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:brute
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:leaper=false}] at @s if entity @e[type=zombie,tag=leaper_zombie,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:leaper
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:skeleton=false}] at @s if entity @e[type=skeleton,tag=base_skeleton,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:skeleton
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:witch=false}] at @s if entity @e[type=zombie,tag=witch_zombie,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:witch
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:husk=false}] at @s if entity @e[type=husk,tag=husk,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:husk
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:evoker=false}] at @s if entity @e[type=evoker,tag=evoker,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:evoker
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:vex=false}] at @s if entity @e[type=vex,tag=vex,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:vex
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:hooded=false}] at @s if entity @e[type=zombie,tag=hoodie_miniboss,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:hooded
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:shopkeeper=false}] at @s if entity @e[type=pillager,tag=shopkeeper,team=enemy,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:shopkeeper

# volition
execute if score $volition game matches 1 run function journal:check_volition_entries



# rescheduling function
schedule function game:mechanics/active_efficient 10t