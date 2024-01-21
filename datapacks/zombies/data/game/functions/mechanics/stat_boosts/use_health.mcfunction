##Called to use the health boost.



clear @s red_dye{stat_boost:1b} 1
clear @s[scores={boost_health=5..}] red_dye{stat_boost:1b} 2
clear @s #minecraft:boosters{display_booster:1b}


# mastery rank up
execute if score @s boost_health matches 5.. run scoreboard players add @s mastery_health 1
execute if score @s boost_health matches 5.. if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[tag=used_bundle] only advancements:volition/item-bundle
execute if score @s boost_health matches 5.. run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Mastery ","color":"red"},{"score":{"objective":"mastery_health","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_health matches 5.. run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5

# execute if score @s boost_health matches 5.. if score @s mastery_health matches ..5 run scoreboard players set @s boost_health 0
execute if score @s boost_health matches ..4 run scoreboard players add @s boost_health 1

function game:mechanics/stat_boosts/update_attributes

scoreboard players set @s new_color 16711680

function game:mechanics/stat_boosts/color/find_average_color

# seeing if our health is higher than our max health
execute store result score $calculate calculate run attribute @s minecraft:generic.max_health get
execute store result score $calculate2 calculate run data get entity @s Health

execute if score $calculate calculate < $calculate2 calculate run effect give @s instant_health 1 0 true

##effect

effect give @s regeneration 3 1 true
execute if score $healthshare modifiers matches 1 run effect give @s regeneration 3 1 true
execute if score @s mastery_health matches 0 run tellraw @s ["",{"text":"+1.0 ","color":"gold","bold":true},{"text":"Heart","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"red","bold":true},{"text":" times.","color":"gold","bold":false}]

execute if score @s mastery_health matches 1 run tellraw @s  ["",{"text":"+0.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 2 run tellraw @s  ["",{"text":"+1.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 3 run tellraw @s  ["",{"text":"+1.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 4 run tellraw @s  ["",{"text":"+2.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 5 run tellraw @s  ["",{"text":"+2.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 6 run tellraw @s  ["",{"text":"+3.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 7 run tellraw @s  ["",{"text":"+4.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 8 run tellraw @s  ["",{"text":"+5.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 9 run tellraw @s  ["",{"text":"+5.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 10 run tellraw @s ["",{"text":"+6.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 11 run tellraw @s ["",{"text":"+6.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 12 run tellraw @s ["",{"text":"+7.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 13 run tellraw @s ["",{"text":"+7.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 14 run tellraw @s ["",{"text":"+8.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 15 run tellraw @s ["",{"text":"+8.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 16 run tellraw @s ["",{"text":"+9.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 17 run tellraw @s ["",{"text":"+9.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 18 run tellraw @s ["",{"text":"+10.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 19 run tellraw @s ["",{"text":"+10.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 20 run tellraw @s ["",{"text":"+11.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 21 run tellraw @s ["",{"text":"+11.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 22 run tellraw @s ["",{"text":"+12.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 23 run tellraw @s ["",{"text":"+12.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 24 run tellraw @s ["",{"text":"+13.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 25 run tellraw @s ["",{"text":"+13.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 26 run tellraw @s ["",{"text":"+14.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 27 run tellraw @s ["",{"text":"+14.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 28 run tellraw @s ["",{"text":"+15.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 29 run tellraw @s ["",{"text":"+15.5 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]
execute if score @s mastery_health matches 30 run tellraw @s ["",{"text":"+16.0 ","color":"gold","bold":true},{"text":"Hearts","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_health","name":"@s"},"color":"red","bold":true}]

playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

scoreboard players set @s booster_delay 61
execute if score @s mastery_health matches 1 run scoreboard players set @s booster_delay 81
execute if score @s mastery_health matches 2 run scoreboard players set @s booster_delay 101
execute if score @s mastery_health matches 3 run scoreboard players set @s booster_delay 141
execute if score @s mastery_health matches 4 run scoreboard players set @s booster_delay 161
execute if score @s mastery_health matches 5.. run scoreboard players set @s booster_delay 181

##Health color

#c40009

function game:mechanics/get_display_boosters



