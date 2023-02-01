##Called when an enemy takes damage.

##Getting the amplifier of luck
execute if data entity @s ActiveEffects[{Id:26}].Amplifier store result score @s calculate_2 run data get entity @s ActiveEffects[{Id:26}].Amplifier 1

##If there is a player with luck
execute if entity @a[tag=playing,gamemode=adventure,team=game,scores={boost_damage=1..}] run function game:enemy/check_damage_changes


######Effects. (it's done here so that it can affect the damage.)
##Seeing if we need to check our ID.
execute store result score @s calculate run data get entity @s ActiveEffects[{Id:29}].Amplifier 1
execute if score @s calculate matches 0.. if data entity @s ActiveEffects[{Id:29}].Amplifier run function game:enemy/check_id_damage


##Seeing if we have additional things that need to happen
execute store result score @s calculate run data get entity @s ActiveEffects[{Id:13}].Amplifier 1
execute if score @s calculate matches 0.. if data entity @s ActiveEffects[{Id:13}].Amplifier run function game:enemy/effect/find_effect

##Specific element damage
execute store result score @s calculate run data get entity @s ActiveEffects[{Id:4}].Amplifier 1
execute if entity @s[scores={calculate=0..}] if data entity @s ActiveEffects[{Id:4}].Amplifier run function game:enemy/elemental_damage

##Extra damage
execute store result score @s calculate run data get entity @s ActiveEffects[{Id:32}].Amplifier 1
execute if entity @s[scores={calculate=0..}] if data entity @s ActiveEffects[{Id:32}].Amplifier run scoreboard players operation @s calculate_2 += @s calculate


##If we're a husk and we haven't taken damage yet.
execute if entity @s[tag=husk,tag=!hit_before] run function game:enemy/husk_first_damage

##Applying RNG
execute store result score $rand random run loot insert 0 1 0 loot random:damage_rng
function random:reset_chest

scoreboard players operation $pre_rng calculate = @s calculate_2


execute if score $rand random matches 0 run scoreboard players remove @s[tag=!no_rng] calculate_2 10
execute if score $rand random matches 1 run scoreboard players remove @s[tag=!no_rng] calculate_2 9
execute if score $rand random matches 2 run scoreboard players remove @s[tag=!no_rng] calculate_2 8
execute if score $rand random matches 3 run scoreboard players remove @s[tag=!no_rng] calculate_2 7
execute if score $rand random matches 4 run scoreboard players remove @s[tag=!no_rng] calculate_2 6
execute if score $rand random matches 5 run scoreboard players remove @s[tag=!no_rng] calculate_2 5
execute if score $rand random matches 6 run scoreboard players remove @s[tag=!no_rng] calculate_2 4
execute if score $rand random matches 7 run scoreboard players remove @s[tag=!no_rng] calculate_2 3
execute if score $rand random matches 8 run scoreboard players remove @s[tag=!no_rng] calculate_2 2
execute if score $rand random matches 9 run scoreboard players remove @s[tag=!no_rng] calculate_2 1

execute if score $rand random matches 11 run scoreboard players add @s[tag=!no_rng] calculate_2 1
execute if score $rand random matches 12 run scoreboard players add @s[tag=!no_rng] calculate_2 2
execute if score $rand random matches 13 run scoreboard players add @s[tag=!no_rng] calculate_2 3
execute if score $rand random matches 14 run scoreboard players add @s[tag=!no_rng] calculate_2 4
execute if score $rand random matches 15 run scoreboard players add @s[tag=!no_rng] calculate_2 5
execute if score $rand random matches 16 run scoreboard players add @s[tag=!no_rng] calculate_2 6
execute if score $rand random matches 17 run scoreboard players add @s[tag=!no_rng] calculate_2 7
execute if score $rand random matches 18 run scoreboard players add @s[tag=!no_rng] calculate_2 8
execute if score $rand random matches 19 run scoreboard players add @s[tag=!no_rng] calculate_2 9
execute if score $rand random matches 20 run scoreboard players add @s[tag=!no_rng] calculate_2 10

execute if entity @a[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:rabbit_foot"}]}] run function game:enemy/check_rabbit_foot_changes

##if we were hit by a player with luck stat
execute if entity @s[tag=hit_by_damage_booster] run function game:enemy/change_damage

##removing rng tag
tag @s remove no_rng

##Adding extra damage
scoreboard players operation @s calculate_2 += @s extra_damage
scoreboard players add @s[tag=forest_essence_controlled] calculate_2 80


## HARROWED HOODLUM MINIBOSS
# Cancelling damage if it's an invisible hoodie
execute if entity @s[type=zombie,tag=hoodie_miniboss,tag=invisible_hoodie] run scoreboard players set @s calculate_2 0
# Turning the hooded zombie invisible if another one exists
execute if entity @s[type=zombie,tag=hoodie_miniboss,tag=!invisible_hoodie] if entity @e[type=zombie,tag=hoodie_miniboss,tag=invisible_hoodie] run function game:enemy/hoodies/change_visibility


##Removing our damage score.
scoreboard players operation @s[tag=!boss] enemy_health -= @s calculate_2
scoreboard players operation @s[tag=forest_essence_controlled] enemy_health -= @s calculate_2
execute if entity @s[tag=boss] run scoreboard players operation $health boss -= @s calculate_2


##If we go under zero, set it to zero.
scoreboard players set @s[scores={enemy_health=..-1}] enemy_health 0


##Summoning damage indicator
summon armor_stand ~ ~1.75 ~ {CustomNameVisible:0b,Tags:["damage_indicator","needs_name","on_death_timer"],Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b}
##Showing how much damage was dealt.
loot spawn 0 0 0 loot game:damage_dealt

##Copying the sign to our namee
data modify entity @e[type=armor_stand,tag=needs_name,sort=nearest,limit=1] CustomName set from entity @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:redstone"}}] Item.tag.display.Name

##Enabling custom name CustomNameVisible
data modify entity @e[type=armor_stand,tag=needs_name,sort=nearest,limit=1] CustomNameVisible set value 1b

##Killing the redstone
kill @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:redstone"}}]

##Setting damage indicator
scoreboard players set @e[type=armor_stand,tag=needs_name] death_timer 15

##Setting death timer
scoreboard players set @e[type=armor_stand,tag=needs_name] damage_timer 10

##rem0oving needs name tag
tag @e[type=armor_stand,tag=needs_name,sort=nearest,limit=1] remove needs_name

##Reupdating the custom name
function game:enemy/update_name




execute if entity @s[scores={enemy_health=0}] run function game:enemy/die


##Clearing our effect
effect clear @s luck
effect clear @s water_breathing
effect clear @s mining_fatigue
effect clear @s conduit_power
effect clear @s dolphins_grace
effect clear @s hero_of_the_village

##removing tag from players
tag @a remove player_who_hit_enemy


##If we're frostbitten
tag @s remove frostbitten

##If we're antimattered
execute if entity @s[tag=antimatter] run scoreboard players operation @s extra_damage -= @s targetting_dmg
tag @s remove antimatter

##tag
tag @s add non_melee_damage

tag @s remove hit_by_damage_booster
