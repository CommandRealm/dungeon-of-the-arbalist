##Main mechanics function

##If there is a shopkeeper, run function
execute if score $mode settings matches 0 if entity @e[type=pillager,tag=shopkeeper] run function game:shops/shopkeeper/main
execute if score $mode settings matches 1 if entity @e[type=witch,tag=shopkeeper] run function game:shops/shopkeeper/main
execute if score $mode settings matches 2 if entity @e[type=vindicator,tag=shopkeeper] run function game:shops/shopkeeper/main

##If an enemy takes damage:
execute as @e[team=enemy,tag=enemy,predicate=game:luck] at @s run function game:enemy/check_take_damage

##If an enemy was hit melee damaged.
execute as @e[team=enemy,tag=enemy,nbt={HurtTime:9s}] at @s run function game:enemy/check_hit

##Crossbow mechanics (y level unless is so that you won't get it during spawning)
execute as @a[gamemode=adventure,tag=mechanics] at @s unless entity @s[scores={arrow_delay=1..}] unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:crossbow"}]}] run function game:mechanics/get_crossbow
execute as @a[gamemode=adventure,tag=mechanics,scores={arrow_delay=1..,quiver=1..}] at @s unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:flint"}]}] run function game:mechanics/get_delay_item
execute as @a[gamemode=adventure,tag=mechanics,scores={arrow_delay=1..,quiver=..0}] at @s unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:leather"}]}] run function game:mechanics/get_reload_delay_item
execute if entity @a[gamemode=adventure,tag=mechanics,scores={arrow_delay=1..,quiver=..0}] run function game:mechanics/calculate_xp_bar_percentage

##If we offhanded something else
execute as @a[tag=playing,gamemode=adventure,tag=!filled_hotbar,team=game,nbt={Inventory:[{Slot:-106b}]}] at @s unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{offhand_item:1}}]}] unless data entity @s {Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]} run function game:mechanics/give_back_offhanded_item

##Getting offhand item
execute as @a[gamemode=adventure,tag=mechanics] at @s unless entity @s[y=0,distance=..20] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{offhand_item:1}}]}] run function game:mechanics/get_offhand_item
execute as @a[gamemode=adventure,tag=mechanics,scores={shoot_crossbow=1..}] at @s run function game:mechanics/shoot_crossbow

##If we don't have an arrow
scoreboard players set @a[tag=playing,gamemode=adventure,team=game] calculate 0

# arrows
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=1..125},nbt={Inventory:[{Slot:7b,id:"minecraft:arrow"}]}] at @s run function game:mechanics/hotbar_arrow_display/check_arrow_count
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=126..},nbt={Inventory:[{Slot:7b,id:"minecraft:spectral_arrow"}]}] at @s run function game:mechanics/hotbar_arrow_display/check_spectral_arrow_count
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=1..125}] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:arrow"}]}] unless entity @s[y=0,distance=..20] run function game:mechanics/hotbar_arrow_display/get_arrow
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=126..}] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:spectral_arrow"}]}] unless entity @s[y=0,distance=..20] run function game:mechanics/hotbar_arrow_display/check_spectral_arrow_count
execute as @a[gamemode=adventure,tag=mechanics,scores={quiver=..0}] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:stick"}]}] unless entity @s[y=0,distance=..20] run function game:mechanics/hotbar_arrow_display/get_no_arrow_indicator

##removing arrow delay
scoreboard players remove @a[scores={arrow_delay=1..}] arrow_delay 1
execute as @a[scores={arrow_delay=0}] at @s unless entity @s[tag=!playing,tag=!tutorial] run function game:mechanics/delay_over

##killing arrows in blocks
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function game:mechanics/arrow_in_block


##Moving up the damage indicator
execute as @e[type=armor_stand,tag=damage_indicator] at @s run tp @s ~ ~0.05 ~


##Converting items to currency score.
execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{tag:{treasure:1}}]}] at @s store result score @s calculate run clear @s #minecraft:treasure{treasure:1} 0
execute as @a[gamemode=adventure,tag=mechanics,scores={calculate=1..},nbt={Inventory:[{tag:{treasure:1}}]}] at @s run function game:mechanics/convert_treasure
execute as @a[gamemode=adventure,tag=mechanics,nbt={Inventory:[{tag:{treasure:1}}]}] at @s run clear @s #minecraft:treasure{treasure:1}

##Upgrade nameplate detection

##disabling
execute as @e[type=area_effect_cloud,tag=upgrade_text,tag=nameplate_enabled] at @s run function game:mechanics/upgrade/check_nameplate_distance

##Enabling the price for doors.
execute as @a[tag=playing,gamemode=adventure,team=game] at @s as @e[type=area_effect_cloud,tag=upgrade_text,sort=nearest,limit=1,distance=..7.5] at @s unless entity @s[nbt={CustomNameVisible:1b}] run function game:mechanics/upgrade/enable_nameplate

##If there is an active animation on the upgrade texts
execute if entity @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=0..},limit=1] run function game:mechanics/upgrade/animation/main


##Keeping track of raycast.
execute as @a[gamemode=adventure,tag=mechanics] at @s if entity @e[tag=raycast,distance=..6] anchored eyes positioned ^ ^ ^1.25 run function game:mechanics/raycast/start_raycast

##Items (if statement is because someone could be in the tutorial)
execute if entity @a[tag=playing] run function game:shops/items/main

##Resetting dropped item objectives
execute as @a[gamemode=adventure,tag=mechanics,scores={try_purchase=1..}] at @s run function game:mechanics/drop_item


##Clearing out subtitle if we're not in range of the door.
execute unless score $countdown pregame matches 1.. as @a[gamemode=adventure,tag=mechanics,tag=!in_boss_room] at @s unless entity @s[y=0,distance=..20] unless entity @e[tag=raycast,distance=..6] unless score $time game matches 1000..1040 run title @s[tag=!play_alternate_title] subtitle [{"text":""}]


##Upgrade marker function
execute if entity @e[type=armor_stand,tag=upgrade_marker,limit=1] run function game:mechanics/upgrade/marker_effects

##Tagging arrows
tag @e[type=arrow,tag=!tagged_arrow] add tagged_arrow


##If there is a debris arrow
execute if entity @e[type=arrow,tag=debris_arrow] run function game:enemy/effect/debris/main

##If there is an electrostatic arrow
execute if entity @e[type=arrow,tag=electrostatic_arrow] run function game:enemy/effect/electrostatic/main

##When we kill a mob.
execute as @a[tag=playing,gamemode=adventure,team=game,scores={get_kill=1..}] at @s run function game:mechanics/get_kill


##If there is a falling block
execute if entity @e[type=armor_stand,tag=falling_block] run function game:mechanics/falling_block/main

##Display action bar.
execute as @a[gamemode=adventure,tag=mechanics] at @s unless entity @s[scores={action_bar_delay=1..}] unless entity @s[y=0,distance=..20] run title @s actionbar [{"text":"You have ","color":"gray"},{"score":{"objective":"treasure","name":"@s"},"color":"yellow"},{"text":" treasure.","color":"gold"}]
execute as @a[gamemode=adventure,tag=mechanics,tag=!tutorial] at @s unless entity @s[scores={action_bar_delay=1..}] unless entity @s[y=0,distance=..20] if score $mode settings matches 1.. run function game:adventure/display_treasure

##If someone is on the action bar delay
execute if entity @a[gamemode=adventure,tag=mechanics,scores={action_bar_delay=1..}] run function game:mechanics/action_bar_delay/main



##Fixing item despawn timers
execute as @e[type=item,tag=shop_item] at @s run data modify entity @s Age set value -32768s







##Inventory changed advancement to check basic things that aren't related to timing. (like making sure we have armor and iron bars in the back of our inventories.)
execute unless entity @a[tag=mechanics,advancements={game:inventory_changed=true}] if entity @a[tag=playing,advancements={game:inventory_changed=true}] run function game:mechanics/check_inventory
execute if entity @a[tag=mechanics,advancements={game:inventory_changed=true}] run function game:mechanics/check_inventory




##If we die:
execute as @a[tag=playing,gamemode=adventure,scores={death=1..},team=!win] at @s run function game:mechanics/check_die

##Keeping track of our position for when we die
execute as @a[tag=playing,gamemode=adventure,team=game] at @s store result score @s death_pos_x run data get entity @s Pos[0] 100
execute as @a[tag=playing,gamemode=adventure,team=game] at @s store result score @s death_pos_y run data get entity @s Pos[1] 100
execute as @a[tag=playing,gamemode=adventure,team=game] at @s store result score @s death_pos_z run data get entity @s Pos[2] 100






##Killing exp
kill @e[type=experience_orb]


##Clearing poison (because of cave spiders)
effect clear @a[tag=playing,gamemode=adventure] poison

##Kill if we fall in the void.
execute if score $mode settings matches 0 as @a[tag=playing,gamemode=adventure] at @s if entity @s[y=30,distance=..20] run function game:mechanics/fall_in_void/check
execute if score $mode settings matches 2 as @a[tag=playing,gamemode=adventure,tag=in_boss_room] at @s if entity @s[y=20,distance=..25] run kill @s



##If there is a revive point.
execute if entity @e[type=area_effect_cloud,tag=revive_aec,limit=1] run function game:mechanics/revive/main

##if there is a dead player
execute as @a[tag=playing,team=enemy] at @s run function game:mechanics/dead/main




##
execute as @e[type=arrow,tag=dead_player_arrow] at @s run data merge entity @s {damage:0.1d,crit:0b}


##Called to fix spectators
execute as @a[gamemode=spectator,tag=needs_spectator_fix] at @s run function game:mechanics/fix_spectator/main



##If there is a miniboss
execute if entity @e[team=enemy,tag=miniboss,limit=1] run function game:enemy/call_miniboss_functions

##When a player takes damage.
execute as @a[team=game,gamemode=adventure,tag=playing,scores={damage_taken=1..}] at @s run function game:mechanics/take_damage

##if someone has a booster delay (currently only applies to the health booster)
execute if entity @a[team=game,gamemode=adventure,tag=playing,scores={booster_delay=1..}] run function game:mechanics/stat_boosts/delay/main


##If there someone waiting for their description
execute as @a[tag=mechanics,tag=needs_effect_description,nbt={Inventory:[{id:"minecraft:crossbow"}]}] at @s run function game:mechanics/get_crossbow_effects

##If someone has an item description delay
execute if entity @a[tag=playing,scores={desc_delay=1..}] run function game:mechanics/description_delay/main


##Detecting a hit.
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={game:hit=true}] at @s run function game:mechanics/hit



##Below name stuff
scoreboard players remove $below_name_time game 1
execute if score $below_name_time game matches 0 run function game:mechanics/change_below_name

##If someone is in the middle of a punch effect.
execute if entity @a[scores={punch_animation=1..},tag=playing,team=game] run function cosmetics:punch/cooldown


##Clearing hunger
effect clear @a[tag=playing] hunger

##If a player has blindness
execute if entity @e[type=illusioner] if entity @a[tag=playing,nbt={active_effects:[{id:"minecraft:blindness"}]}] run function game:mechanics/removing_blindness/check

##If there is a spawn delay active
execute if score $spawn_in_progress game matches 1 if entity @e[type=marker,tag=zombie_spawnpoint,scores={spawn_delay=1..},limit=1] run function game:mechanics/spawn_delay/main

##If there is a skeleton with levitation.
execute if entity @e[type=skeleton,nbt={active_effects:[{id:"minecraft:levitation"}]},tag=base_skeleton] run function game:mechanics/skeleton_with_levitation

# seeing if a player is dangling over the edge
execute as @a[tag=playing,nbt={OnGround:1b}] at @s run function game:mechanics/player_position_check/run


# when the player gets damaged
execute as @a[advancements={game:enemy_damage/check=true}] at @s run function game:mechanics/enemy_damage_effects/check

# if volition is on: call functions that need to run outside of main enemy function for it
execute if score $volition game matches 1 run function game:enemy/volition/run_from_main

# wind effect
execute as @a[tag=playing,scores={wind=1..},gamemode=adventure] at @s run function game:mechanics/wind/main


# trials
execute if entity @a[tag=playing,tag=active_trial,team=game] run function game:trials/main

# modifiers
execute if score $modifiers settings matches 1 run function game:modifiers/main


