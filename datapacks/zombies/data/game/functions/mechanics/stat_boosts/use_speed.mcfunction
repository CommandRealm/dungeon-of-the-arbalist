##Called to use the speed boost.



clear @s light_blue_dye{stat_boost:1b} 1
clear @s #minecraft:boosters{display_booster:1b}


# prestige rank up
execute if score @s boost_speed matches 5.. run scoreboard players add @s prestige_speed 1
execute if score @s boost_speed matches 5.. if score @s prestige_speed matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Prestige ","color":"#3eefff"},{"score":{"objective":"prestige_speed","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_speed matches 5.. if score @s prestige_speed matches ..5 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5
execute if score @s boost_speed matches 5.. if score @s prestige_speed matches ..5 run scoreboard players set @s boost_speed 0
execute if score @s prestige_speed matches ..5 run scoreboard players add @s boost_speed 1


# resetting prestige to 5
execute if score @s prestige_speed matches 6.. run scoreboard players set @s prestige_speed 5

function game:mechanics/stat_boosts/update_attributes

scoreboard players set @s new_color 56575

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s prestige_speed matches 0 run tellraw @s ["",{"text":"+8.0% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#3eefff","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_speed matches 1 run tellraw @s ["",{"text":"+8.5% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#3eefff","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_speed matches 2 run tellraw @s ["",{"text":"+9.0% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#3eefff","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_speed matches 3 run tellraw @s ["",{"text":"+9.5% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#3eefff","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_speed matches 4 run tellraw @s ["",{"text":"+10.0% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#3eefff","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_speed matches 5 run tellraw @s ["",{"text":"+10.5% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#3eefff","bold":true},{"text":" times.","color":"gold","bold":false}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:light_blue_dye",tag:{stat_boost:1b}}]},scores={boost_speed=..4}] run function game:mechanics/stat_boosts/use_speed






