# now that we have the item, see its damage, and delay to calculate DPS
execute store result score $damage calculate run data get entity @s Inventory[0].tag.ChargedProjectiles[0].tag.CustomPotionEffects[{Id:26}].Amplifier
execute store result score $damage_2 calculate run data get entity @s Inventory[0].tag.ChargedProjectiles[0].tag.CustomPotionEffects[{Id:32}].Amplifier
execute store result score $damage_3 calculate run data get entity @s Inventory[0].tag.ChargedProjectiles[0].tag.CustomPotionEffects[{Id:3}].Amplifier

# adding damages
scoreboard players operation $damage calculate += $damage_2 calculate
scoreboard players operation $damage calculate += $damage_3 calculate

# delay
execute store result score $delay calculate run data get entity @s Inventory[0].tag.delay

# adding flat damage for our boosters
scoreboard players operation $damage calculate += @s b_damage

# division and getting base DPS
scoreboard players operation $damage calculate *= $20 number
scoreboard players operation $damage calculate /= $delay calculate


