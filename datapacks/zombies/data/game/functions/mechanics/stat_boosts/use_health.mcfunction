##Called to use the health boost.



clear @s red_dye{stat_boost:1b} 1
clear @s #minecraft:boosters{display_booster:1b}


# prestige rank up
execute if score @s boost_health matches 5.. run scoreboard players add @s prestige_health 1
execute if score @s boost_health matches 5.. if score @s prestige_health matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Prestige ","color":"red"},{"score":{"objective":"prestige_health","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_health matches 5.. if score @s prestige_health matches ..5 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5

execute if score @s boost_health matches 5.. if score @s prestige_health matches ..5 run scoreboard players set @s boost_health 0
execute if score @s prestige_health matches ..5 run scoreboard players add @s boost_health 1

# resetting prestige to 5
execute if score @s prestige_health matches 6.. run scoreboard players set @s prestige_health 5

function game:mechanics/stat_boosts/update_attributes

scoreboard players set @s new_color 16711680

function game:mechanics/stat_boosts/color/find_average_color

# seeing if our health is higher than our max health
execute store result score $calculate calculate run attribute @s minecraft:generic.max_health get
execute store result score $calculate2 calculate run data get entity @s Health

execute if score $calculate calculate < $calculate2 calculate run effect give @s instant_health 1 0 true

##effect

effect give @s regeneration 3 1 true
execute if score @s prestige_health matches 1 run effect give @s regeneration 4 1 true
execute if score @s prestige_health matches 2 run effect give @s regeneration 5 1 true
execute if score @s prestige_health matches 3 run effect give @s regeneration 7 1 true
execute if score @s prestige_health matches 4 run effect give @s regeneration 8 1 true
execute if score @s prestige_health matches 5.. run effect give @s regeneration 9 1 true

execute if score @s prestige_health matches 0 run tellraw @s ["",{"text":"+1.0 ","color":"gold","bold":true},{"text":"Heart","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"red","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_health matches 1 run tellraw @s ["",{"text":"+1.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"red","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_health matches 2 run tellraw @s ["",{"text":"+2.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"red","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_health matches 3 run tellraw @s ["",{"text":"+2.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"red","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_health matches 4 run tellraw @s ["",{"text":"+3.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"red","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_health matches 5 run tellraw @s ["",{"text":"+3.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"red","bold":true},{"text":" times.","color":"gold","bold":false}]

playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

scoreboard players set @s booster_delay 61
execute if score @s prestige_health matches 1 run scoreboard players set @s booster_delay 81
execute if score @s prestige_health matches 2 run scoreboard players set @s booster_delay 101
execute if score @s prestige_health matches 3 run scoreboard players set @s booster_delay 141
execute if score @s prestige_health matches 4 run scoreboard players set @s booster_delay 161
execute if score @s prestige_health matches 5.. run scoreboard players set @s booster_delay 181

##Health color

#c40009

##12845065




