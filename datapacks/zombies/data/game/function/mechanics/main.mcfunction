##Main mechanics function

##If there is a shopkeeper, run function
execute if score $mode settings matches 0 if entity @e[type=minecraft:pillager,tag=shopkeeper] run function game:shops/shopkeeper/main
execute if score $mode settings matches 1 if entity @e[type=minecraft:witch,tag=shopkeeper] run function game:shops/shopkeeper/main
execute if score $mode settings matches 2 if entity @e[type=minecraft:vindicator,tag=shopkeeper] run function game:shops/shopkeeper/main

##If an enemy takes damage:
execute as @e[tag=enemy,team=enemy,predicate=game:luck] at @s run function game:enemy/check_take_damage

##If an enemy was hit melee damaged.
execute as @e[tag=enemy,team=enemy,nbt={HurtTime:9s}] at @s run function game:enemy/check_hit

##Crossbow mechanics (y level unless is so that you won't get it during spawning)
execute as @a[gamemode=adventure,tag=mechanics] at @s unless entity @s[scores={arrow_delay=1..}] unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:0b}]}] run function game:mechanics/get_crossbow
execute as @a[gamemode=adventure,tag=mechanics,scores={arrow_delay=1..,quiver=1..}] at @s unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{id:"minecraft:flint",Slot:0b}]}] run function game:mechanics/get_delay_item
execute as @a[gamemode=adventure,tag=mechanics,scores={arrow_delay=1..,quiver=..0}] at @s unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{id:"minecraft:leather",Slot:0b}]}] run function game:mechanics/get_reload_delay_item
execute if entity @a[gamemode=adventure,tag=mechanics,scores={arrow_delay=1..,quiver=..0}] run function game:mechanics/calculate_xp_bar_percentage

##If we offhanded something else
execute as @a[gamemode=adventure,tag=playing,tag=!filled_hotbar,team=game,nbt={Inventory:[{Slot:-106b}]}] at @s unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{offhand_item:1}},Slot:-106b}]}] unless data entity @s {Inventory:[{id:"minecraft:crossbow",Slot:-106b}]} run function game:mechanics/give_back_offhanded_item

##Getting offhand item
execute as @a[gamemode=adventure,tag=mechanics] at @s unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{offhand_item:1}},Slot:-106b}]}] run function game:mechanics/get_offhand_item
execute as @a[gamemode=adventure,tag=mechanics,scores={shoot_crossbow=1..}] at @s run function game:mechanics/shoot_crossbow

##If we don't have an arrow
scoreboard players set @a[gamemode=adventure,tag=playing,team=game] calculate 0
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=1..},nbt={Inventory:[{id:"minecraft:arrow",Slot:7b}]}] at @s store result score @s calculate run data get entity @s Inventory[{Slot:7b}].count
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=1..64},nbt={Inventory:[{id:"minecraft:arrow",Slot:7b}]}] at @s unless entity @s[y=0,distance=..20] unless score @s calculate = @s quiver run function game:mechanics/get_arrow
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=65..},nbt={Inventory:[{id:"minecraft:arrow",Slot:7b}]}] at @s unless entity @s[y=0,distance=..20] unless score @s calculate matches 64 run function game:mechanics/get_arrow
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:7b}]}] unless entity @s[y=0,distance=..20] run function game:mechanics/get_arrow

execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stick",Slot:7b}]}] unless entity @s[y=0,distance=..20] run function game:mechanics/get_no_arrow_indicator

##removing arrow delay
scoreboard players remove @a[scores={arrow_delay=1..}] arrow_delay 1
execute as @a[scores={arrow_delay=0}] at @s unless entity @s[tag=!playing,tag=!tutorial] run function game:mechanics/delay_over

##killing arrows in blocks
execute as @e[type=minecraft:arrow,nbt={inGround:1b}] at @s run function game:mechanics/arrow_in_block


##Moving up the damage indicator
execute as @e[type=minecraft:armor_stand,tag=damage_indicator] at @s run tp @s ~ ~0.05 ~


##Converting items to currency score.
execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{components:{"minecraft:custom_data":{treasure:1}}}]}] at @s store result score @s calculate run clear @s #minecraft:treasure[minecraft:custom_data={treasure:1}] 0
execute as @a[gamemode=adventure,tag=mechanics,scores={calculate=1..},nbt={Inventory:[{components:{"minecraft:custom_data":{treasure:1}}}]}] at @s run function game:mechanics/convert_treasure
execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{components:{"minecraft:custom_data":{treasure:1}}}]}] at @s run clear @s #minecraft:treasure[minecraft:custom_data={treasure:1}]

##Upgrade nameplate detection

##disabling
execute as @e[type=minecraft:area_effect_cloud,tag=upgrade_text,tag=nameplate_enabled] at @s run function game:mechanics/upgrade/check_nameplate_distance

##Enabling the price for doors.
execute as @a[gamemode=adventure,tag=playing,team=game] at @s as @e[type=minecraft:area_effect_cloud,distance=..7.5,tag=upgrade_text,sort=nearest,limit=1] at @s unless entity @s[nbt={CustomNameVisible:1b}] run function game:mechanics/upgrade/enable_nameplate

##If there is an active animation on the upgrade texts
execute if entity @e[type=minecraft:area_effect_cloud,tag=upgrade_text,scores={animation=0..},limit=1] run function game:mechanics/upgrade/animation/main


##Keeping track of raycast.
execute as @a[gamemode=adventure,tag=mechanics] at @s if entity @e[distance=..6,tag=raycast] anchored eyes positioned ^ ^ ^1.25 run function game:mechanics/raycast/start_raycast

##Items (if statement is because someone could be in the tutorial)
execute if entity @a[tag=playing] run function game:shops/items/main

##Resetting dropped item objectives
execute as @a[gamemode=adventure,tag=mechanics,scores={try_purchase=1..}] at @s run function game:mechanics/drop_item


##Clearing out subtitle if we're not in range of the door.
execute unless score $countdown pregame matches 1.. as @a[gamemode=adventure,tag=mechanics,tag=!in_boss_room] at @s unless entity @s[y=0,distance=..20] unless entity @e[distance=..6,tag=raycast] unless score $time game matches 1000..1040 run title @s[tag=!play_alternate_title] subtitle [{"text":"","type":"text"}]


##Upgrade marker function
execute if entity @e[type=minecraft:armor_stand,tag=upgrade_marker,limit=1] run function game:mechanics/upgrade/marker_effects

##Tagging arrows
tag @e[type=minecraft:arrow,tag=!tagged_arrow] add tagged_arrow


##If there is a debris arrow
execute if entity @e[type=minecraft:arrow,tag=debris_arrow] run function game:enemy/effect/debris/main

##If there is an electrostatic arrow
execute if entity @e[type=minecraft:arrow,tag=electrostatic_arrow] run function game:enemy/effect/electrostatic/main

##When we kill a mob.
execute as @a[gamemode=adventure,tag=playing,scores={get_kill=1..},team=game] at @s run function game:mechanics/get_kill


##If there is a falling block
execute if entity @e[type=minecraft:armor_stand,tag=falling_block] run function game:mechanics/falling_block/main

##Display action bar.
execute as @a[gamemode=adventure,tag=mechanics] at @s unless entity @s[scores={action_bar_delay=1..}] unless entity @s[y=0,distance=..20] run title @s actionbar [{"text":"You have ","color":"gray","type":"text"},{"score":{"objective":"treasure","name":"@s"},"color":"yellow","type":"score"},{"text":" treasure.","color":"gold","type":"text"}]
execute as @a[gamemode=adventure,tag=mechanics,tag=!tutorial] at @s unless entity @s[scores={action_bar_delay=1..}] unless entity @s[y=0,distance=..20] if score $mode settings matches 1.. run function game:adventure/display_treasure

##If someone is on the action bar delay
execute if entity @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..}] run function game:mechanics/action_bar_delay/main



##Fixing item despawn timers
execute as @e[type=minecraft:item,tag=shop_item] at @s run data modify entity @s Age set value -32768s







##Inventory changed advancement to check basic things that aren't related to timing. (like making sure we have armor and iron bars in the back of our inventories.)
execute if entity @a[tag=playing,advancements={game:inventory_changed=true}] run function game:mechanics/check_inventory




##If we die:
execute as @a[gamemode=adventure,tag=playing,scores={death=1..},team=!win] at @s run function game:mechanics/check_die

##Keeping track of our position for when we die
execute as @a[gamemode=adventure,tag=playing,team=game] at @s store result score @s death_pos_x run data get entity @s Pos[0] 100
execute as @a[gamemode=adventure,tag=playing,team=game] at @s store result score @s death_pos_y run data get entity @s Pos[1] 100
execute as @a[gamemode=adventure,tag=playing,team=game] at @s store result score @s death_pos_z run data get entity @s Pos[2] 100






##Killing exp
kill @e[type=minecraft:experience_orb]


##Clearing poison (because of cave spiders)
effect clear @a[gamemode=adventure,tag=playing] minecraft:poison

##Kill if we fall in the void.
execute if score $mode settings matches 0 as @a[gamemode=adventure,tag=playing] at @s if entity @s[y=30,distance=..20] run kill @s
execute if score $mode settings matches 2 as @a[gamemode=adventure,tag=playing,tag=in_boss_room] at @s if entity @s[y=20,distance=..25] run kill @s



##If there is a revive point.
execute if entity @e[type=minecraft:area_effect_cloud,tag=revive_aec,limit=1] run function game:mechanics/revive/main

##if there is a dead player
execute as @a[tag=playing,team=enemy] at @s run function game:mechanics/dead/main




##
execute as @e[type=minecraft:arrow,tag=dead_player_arrow] at @s run data merge entity @s {damage:0.1d,crit:0b}


##Called to fix spectators
execute as @a[gamemode=spectator,tag=needs_spectator_fix] at @s run function game:mechanics/fix_spectator/main


##If a player has a stat boost.
execute if entity @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{components:{"minecraft:custom_data":{stat_boost:1b}}}]}] run function game:mechanics/stat_boosts/check

##If there is a miniboss
execute if entity @e[tag=miniboss,limit=1,team=enemy] run function game:enemy/call_miniboss_functions

##When a player takes damage.
execute as @a[gamemode=adventure,tag=playing,scores={damage_taken=1..},team=game] at @s run function game:mechanics/take_damage

##if someone has a booster delay (currently only applies to the health booster)
execute if entity @a[gamemode=adventure,tag=playing,scores={booster_delay=1..},team=game] run function game:mechanics/stat_boosts/delay/main


##If there someone waiting for their description
execute as @a[tag=mechanics,tag=needs_effect_description,nbt={Inventory:[{id:"minecraft:crossbow"}]}] at @s run function game:mechanics/get_crossbow_effects

##If someone has an item description delay
execute if entity @a[tag=playing,scores={desc_delay=1..}] run function game:mechanics/description_delay/main


##Detecting a hit.
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={game:hit=true}] at @s run function game:mechanics/hit

##Unlocking journal entries.
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:zombie=false}] at @s if entity @e[type=minecraft:zombie,distance=..7,tag=base_zombie] unless score $difficulty settings matches -1 run advancement grant @s only journal:zombie
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:spider=false}] at @s if entity @e[type=minecraft:cave_spider,distance=..7,tag=cave_spider] unless score $difficulty settings matches -1 run advancement grant @s only journal:spider
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:knight=false}] at @s if entity @e[type=minecraft:zombie,distance=..7,tag=knight_zombie] unless score $difficulty settings matches -1 run advancement grant @s only journal:knight
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:brute=false}] at @s if entity @e[type=minecraft:zombie,distance=..7,tag=powerful_zombie] unless score $difficulty settings matches -1 run advancement grant @s only journal:brute
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:leaper=false}] at @s if entity @e[type=minecraft:zombie,distance=..7,tag=leaper_zombie] unless score $difficulty settings matches -1 run advancement grant @s only journal:leaper
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:skeleton=false}] at @s if entity @e[type=minecraft:skeleton,distance=..7,tag=base_skeleton] unless score $difficulty settings matches -1 run advancement grant @s only journal:skeleton
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:witch=false}] at @s if entity @e[type=minecraft:zombie,distance=..7,tag=witch_zombie] unless score $difficulty settings matches -1 run advancement grant @s only journal:witch
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:husk=false}] at @s if entity @e[type=minecraft:husk,distance=..7,tag=husk] unless score $difficulty settings matches -1 run advancement grant @s only journal:husk
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:evoker=false}] at @s if entity @e[type=minecraft:evoker,distance=..7,tag=evoker] unless score $difficulty settings matches -1 run advancement grant @s only journal:evoker
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:vex=false}] at @s if entity @e[type=minecraft:vex,distance=..7,tag=vex] unless score $difficulty settings matches -1 run advancement grant @s only journal:vex
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:hooded=false}] at @s if entity @e[type=minecraft:zombie,distance=..7,tag=scary_zombie] unless score $difficulty settings matches -1 run advancement grant @s only journal:hooded
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:shopkeeper=false}] at @s if entity @e[type=minecraft:pillager,distance=..7,tag=shopkeeper,team=enemy] unless score $difficulty settings matches -1 run advancement grant @s only journal:shopkeeper


##Below name stuff
scoreboard players remove $below_name_time game 1
execute if score $below_name_time game matches 0 run function game:mechanics/change_below_name

##If someone is in the middle of a punch effect.
execute if entity @a[tag=playing,scores={punch_animation=1..},team=game] run function cosmetics:punch/cooldown


##Clearing hunger
effect clear @a[tag=playing] minecraft:hunger

##If a player has blindness
execute if entity @e[type=minecraft:illusioner] if entity @a[tag=playing,nbt={active_effects:[{id:"minecraft:blindness"}]}] run function game:mechanics/removing_blindness/check

##If there is a spawn delay active
execute if score $spawn_in_progress game matches 1 if entity @e[type=minecraft:marker,tag=zombie_spawnpoint,scores={spawn_delay=1..},limit=1] run function game:mechanics/spawn_delay/main

##If there is a skeleton with levitation.
execute if entity @e[type=minecraft:skeleton,tag=base_skeleton,nbt={active_effects:[{id:"minecraft:levitation"}]}] run function game:mechanics/skeleton_with_levitation

# seeing if a player is dangling over the edge
execute as @a[tag=playing,nbt={OnGround:1b}] at @s run function game:mechanics/player_position_check/run


# when the player gets damaged
execute as @a[advancements={game:enemy_damage/check=true}] at @s run function game:mechanics/enemy_damage_effects/check

# if volition is on: call functions that need to run outside of main enemy function for it
execute if score $volition game matches 1 run function game:enemy/volition/run_from_main
return 1