##Called to use the health boost.



clear @s minecraft:red_dye[minecraft:custom_data={stat_boost:1b}] 1
clear @s #minecraft:boosters[minecraft:custom_data={display_booster:1b}]


# prestige rank up
execute if score @s boost_health matches 5.. run scoreboard players add @s prestige_health 1
execute if score @s boost_health matches 5.. if score @s prestige_health matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated":true,"type":"text"},{"text":"Prestige ","color":"red","type":"text"},{"score":{"objective":"prestige_health","name":"@s"},"color":"#bad9e1","bold":true,"type":"score"},{"text":" Rank ","color":"gray","type":"text"},{"text":"Up","color":"white","type":"text"},{"text":" | ","color":"gold","obfuscated":true,"type":"text"}]
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

execute if score $calculate calculate < $calculate2 calculate run effect give @s minecraft:instant_health 1 0 true

##effect

effect give @s minecraft:regeneration 3 1 true
execute if score @s prestige_health matches 1 run effect give @s minecraft:regeneration 4 1 true
execute if score @s prestige_health matches 2 run effect give @s minecraft:regeneration 5 1 true
execute if score @s prestige_health matches 3 run effect give @s minecraft:regeneration 7 1 true
execute if score @s prestige_health matches 4 run effect give @s minecraft:regeneration 8 1 true
execute if score @s prestige_health matches 5.. run effect give @s minecraft:regeneration 9 1 true

execute if score @s prestige_health matches 0 run tellraw @s ["",{"text":"+1.0 ","color":"gold","bold":true,"type":"text"},{"text":"Heart","color":"red","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"red","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_health matches 1 run tellraw @s ["",{"text":"+1.5 ","color":"gold","bold":true,"type":"text"},{"text":"Hearts","color":"red","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"red","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_health matches 2 run tellraw @s ["",{"text":"+2.0 ","color":"gold","bold":true,"type":"text"},{"text":"Hearts","color":"red","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"red","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_health matches 3 run tellraw @s ["",{"text":"+2.5 ","color":"gold","bold":true,"type":"text"},{"text":"Hearts","color":"red","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"red","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_health matches 4 run tellraw @s ["",{"text":"+3.0 ","color":"gold","bold":true,"type":"text"},{"text":"Hearts","color":"red","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"red","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_health matches 5 run tellraw @s ["",{"text":"+3.5 ","color":"gold","bold":true,"type":"text"},{"text":"Hearts","color":"red","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"red","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]

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





return 1