##Called to use the health boost.



clear @s purple_dye{stat_boost:1b} 1
clear @s[scores={boost_damage=5..}] purple_dye{stat_boost:1b} 2
clear @s #minecraft:boosters{display_booster:1b}

# mastery rank up

execute if score @s boost_damage matches 5.. run scoreboard players add @s mastery_damage 1
execute if score @s boost_damage matches 5.. if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[tag=used_bundle] only advancements:volition/item-bundle

execute if score @s boost_damage matches 5.. run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Mastery ","color":"#a000eb"},{"score":{"objective":"mastery_damage","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_damage matches 5.. run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5
execute if score @s boost_damage matches 5.. run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 1

execute if score @s boost_damage matches ..4 run scoreboard players add @s boost_damage 1










execute if score @s boost_damage matches 1 if score @s mastery_damage matches 0 run scoreboard players operation @s calculate = @s boost_damage
execute if score @s boost_damage matches 2 if score @s mastery_damage matches 0 run scoreboard players operation @s calculate = @s boost_damage
execute if score @s boost_damage matches 3 if score @s mastery_damage matches 0 run scoreboard players operation @s calculate = @s boost_damage
execute if score @s boost_damage matches 4 if score @s mastery_damage matches 0 run scoreboard players operation @s calculate = @s boost_damage
execute if score @s boost_damage matches 5 run scoreboard players operation @s calculate = @s boost_damage


execute if score @s boost_damage matches 5.. run scoreboard players operation @s calculate += @s mastery_damage


# if we are reloading, give us crossbow for a sec
function game:mechanics/get_crossbow

# finding our crossbow DPS
execute store result score $damage calculate run data get entity @s Inventory[0].tag.ChargedProjectiles[0].tag.CustomPotionEffects[{Id:26}].Amplifier
execute store result score $damage_2 calculate run data get entity @s Inventory[0].tag.ChargedProjectiles[0].tag.CustomPotionEffects[{Id:32}].Amplifier
execute store result score $damage_3 calculate run data get entity @s Inventory[0].tag.ChargedProjectiles[0].tag.CustomPotionEffects[{Id:3}].Amplifier

# adding damages
scoreboard players operation $damage calculate += $damage_2 calculate
scoreboard players operation $damage calculate += $damage_3 calculate

# resetting save
scoreboard players reset $save_before_division calculate

# setting our b_damage
scoreboard players set @s b_damage 4
scoreboard players operation @s b_damage *= @s boost_damage

# running the calculate function
function game:mechanics/stat_boosts/calculate_damage_booster_percentage




scoreboard players set @s new_color 8323327

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s mastery_damage matches 0 run tellraw @s ["",{"text":"+4 ","color":"gold","bold":true},{"text":"damage","color":"#a000eb","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#a000eb","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s mastery_damage matches 1.. run tellraw @s ["",{"text":"+3% ","color":"gold","bold":true},{"text":"(","color":"gray"},{"score":{"objective":"calculate","name":"$display_damage_boost"},"color":"white"},{"text":") ","color":"gray"},{"text":"damage","color":"#a000eb","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#a000eb","bold":true},{"text":" times.","color":"gold","bold":false}]

playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute unless score @s mastery_damage matches 1.. if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:purple_dye",tag:{stat_boost:1b}}]},scores={boost_damage=..4}] run function game:mechanics/stat_boosts/use_damage

function game:mechanics/get_display_boosters

# giving crossbow so it is updaetd
function game:mechanics/get_crossbow
