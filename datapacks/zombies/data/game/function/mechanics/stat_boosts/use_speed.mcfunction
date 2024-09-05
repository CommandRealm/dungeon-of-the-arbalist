##Called to use the speed boost.



clear @s minecraft:light_blue_dye[minecraft:custom_data={stat_boost:1b}] 1
clear @s #minecraft:boosters[minecraft:custom_data={display_booster:1b}]


# prestige rank up
execute if score @s boost_speed matches 5.. run scoreboard players add @s prestige_speed 1
execute if score @s boost_speed matches 5.. if score @s prestige_speed matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated":true,"type":"text"},{"text":"Prestige ","color":"#3eefff","type":"text"},{"score":{"objective":"prestige_speed","name":"@s"},"color":"#bad9e1","bold":true,"type":"score"},{"text":" Rank ","color":"gray","type":"text"},{"text":"Up","color":"white","type":"text"},{"text":" | ","color":"gold","obfuscated":true,"type":"text"}]
execute if score @s boost_speed matches 5.. if score @s prestige_speed matches ..5 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5
execute if score @s boost_speed matches 5.. if score @s prestige_speed matches ..5 run scoreboard players set @s boost_speed 0
execute if score @s prestige_speed matches ..5 run scoreboard players add @s boost_speed 1


# resetting prestige to 5
execute if score @s prestige_speed matches 6.. run scoreboard players set @s prestige_speed 5

function game:mechanics/stat_boosts/update_attributes

scoreboard players set @s new_color 56575

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s prestige_speed matches 0 run tellraw @s ["",{"text":"+8.0% ","color":"gold","bold":true,"type":"text"},{"text":"speed increase","color":"#3eefff","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#3eefff","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_speed matches 1 run tellraw @s ["",{"text":"+8.5% ","color":"gold","bold":true,"type":"text"},{"text":"speed increase","color":"#3eefff","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#3eefff","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_speed matches 2 run tellraw @s ["",{"text":"+9.0% ","color":"gold","bold":true,"type":"text"},{"text":"speed increase","color":"#3eefff","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#3eefff","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_speed matches 3 run tellraw @s ["",{"text":"+9.5% ","color":"gold","bold":true,"type":"text"},{"text":"speed increase","color":"#3eefff","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#3eefff","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_speed matches 4 run tellraw @s ["",{"text":"+10.0% ","color":"gold","bold":true,"type":"text"},{"text":"speed increase","color":"#3eefff","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#3eefff","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_speed matches 5 run tellraw @s ["",{"text":"+10.5% ","color":"gold","bold":true,"type":"text"},{"text":"speed increase","color":"#3eefff","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#3eefff","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[gamemode=adventure,tag=playing,scores={boost_speed=..4},team=game,nbt={Inventory:[{id:"minecraft:light_blue_dye",components:{"minecraft:custom_data":{stat_boost:1b}}}]}] run function game:mechanics/stat_boosts/use_speed







return 1