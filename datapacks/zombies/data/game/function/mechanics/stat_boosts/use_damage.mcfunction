##Called to use the health boost.



clear @s minecraft:purple_dye[minecraft:custom_data={stat_boost:1b}] 1
clear @s #minecraft:boosters[minecraft:custom_data={display_booster:1b}]

# prestige rank up

execute if score @s boost_damage matches 5.. run scoreboard players add @s prestige_damage 1
execute if score @s boost_damage matches 5.. if score @s prestige_damage matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated":true,"type":"text"},{"text":"Prestige ","color":"#a000eb","type":"text"},{"score":{"objective":"prestige_damage","name":"@s"},"color":"#bad9e1","bold":true,"type":"score"},{"text":" Rank ","color":"gray","type":"text"},{"text":"Up","color":"white","type":"text"},{"text":" | ","color":"gold","obfuscated":true,"type":"text"}]
execute if score @s boost_damage matches 5.. if score @s prestige_damage matches ..5 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5
execute if score @s boost_damage matches 5.. if score @s prestige_damage matches ..5 run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 1

execute if score @s boost_damage matches 5.. if score @s prestige_damage matches ..5 run scoreboard players set @s boost_damage 0
execute if score @s prestige_damage matches ..5 run scoreboard players add @s boost_damage 1

# resetting prestige to 5
execute if score @s prestige_damage matches 6.. run scoreboard players set @s prestige_damage 5

execute if score @s boost_damage matches 1 if score @s prestige_damage matches 0 run scoreboard players set @s b_damage 6
execute if score @s boost_damage matches 2 if score @s prestige_damage matches 0 run scoreboard players set @s b_damage 12
execute if score @s boost_damage matches 3 if score @s prestige_damage matches 0 run scoreboard players set @s b_damage 18
execute if score @s boost_damage matches 4 if score @s prestige_damage matches 0 run scoreboard players set @s b_damage 24
execute if score @s boost_damage matches 5 if score @s prestige_damage matches 0 run scoreboard players set @s b_damage 30

execute if score @s boost_damage matches 1 if score @s prestige_damage matches 1 run scoreboard players set @s b_damage 9
execute if score @s boost_damage matches 2 if score @s prestige_damage matches 1 run scoreboard players set @s b_damage 18
execute if score @s boost_damage matches 3 if score @s prestige_damage matches 1 run scoreboard players set @s b_damage 27
execute if score @s boost_damage matches 4 if score @s prestige_damage matches 1 run scoreboard players set @s b_damage 36
execute if score @s boost_damage matches 5 if score @s prestige_damage matches 1 run scoreboard players set @s b_damage 45

execute if score @s boost_damage matches 1 if score @s prestige_damage matches 2 run scoreboard players set @s b_damage 12
execute if score @s boost_damage matches 2 if score @s prestige_damage matches 2 run scoreboard players set @s b_damage 24
execute if score @s boost_damage matches 3 if score @s prestige_damage matches 2 run scoreboard players set @s b_damage 36
execute if score @s boost_damage matches 4 if score @s prestige_damage matches 2 run scoreboard players set @s b_damage 48
execute if score @s boost_damage matches 5 if score @s prestige_damage matches 2 run scoreboard players set @s b_damage 60

execute if score @s boost_damage matches 1 if score @s prestige_damage matches 3 run scoreboard players set @s b_damage 15
execute if score @s boost_damage matches 2 if score @s prestige_damage matches 3 run scoreboard players set @s b_damage 30
execute if score @s boost_damage matches 3 if score @s prestige_damage matches 3 run scoreboard players set @s b_damage 45
execute if score @s boost_damage matches 4 if score @s prestige_damage matches 3 run scoreboard players set @s b_damage 60
execute if score @s boost_damage matches 5 if score @s prestige_damage matches 3 run scoreboard players set @s b_damage 75

execute if score @s boost_damage matches 1 if score @s prestige_damage matches 4 run scoreboard players set @s b_damage 18
execute if score @s boost_damage matches 2 if score @s prestige_damage matches 4 run scoreboard players set @s b_damage 36
execute if score @s boost_damage matches 3 if score @s prestige_damage matches 4 run scoreboard players set @s b_damage 54
execute if score @s boost_damage matches 4 if score @s prestige_damage matches 4 run scoreboard players set @s b_damage 72
execute if score @s boost_damage matches 5 if score @s prestige_damage matches 4 run scoreboard players set @s b_damage 90

execute if score @s boost_damage matches 1 if score @s prestige_damage matches 5 run scoreboard players set @s b_damage 21
execute if score @s boost_damage matches 2 if score @s prestige_damage matches 5 run scoreboard players set @s b_damage 42
execute if score @s boost_damage matches 3 if score @s prestige_damage matches 5 run scoreboard players set @s b_damage 63
execute if score @s boost_damage matches 4 if score @s prestige_damage matches 5 run scoreboard players set @s b_damage 84
execute if score @s boost_damage matches 5 if score @s prestige_damage matches 5 run scoreboard players set @s b_damage 105

scoreboard players set @s new_color 8323327

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s prestige_damage matches 0 run tellraw @s ["",{"text":"+6 ","color":"gold","bold":true,"type":"text"},{"text":"damage","color":"#a000eb","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#a000eb","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_damage matches 1 run tellraw @s ["",{"text":"+9 ","color":"gold","bold":true,"type":"text"},{"text":"damage","color":"#a000eb","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#a000eb","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_damage matches 2 run tellraw @s ["",{"text":"+12 ","color":"gold","bold":true,"type":"text"},{"text":"damage","color":"#a000eb","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#a000eb","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_damage matches 3 run tellraw @s ["",{"text":"+15 ","color":"gold","bold":true,"type":"text"},{"text":"damage","color":"#a000eb","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#a000eb","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_damage matches 4 run tellraw @s ["",{"text":"+18 ","color":"gold","bold":true,"type":"text"},{"text":"damage","color":"#a000eb","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#a000eb","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
execute if score @s prestige_damage matches 5 run tellraw @s ["",{"text":"+21 ","color":"gold","bold":true,"type":"text"},{"text":"damage","color":"#a000eb","bold":false,"type":"text"},{"text":" | ","color":"dark_gray","bold":false,"type":"text"},{"text":"You have used this booster ","color":"gold","type":"text"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true,"type":"score"},{"text":"/","color":"gray","bold":true,"type":"text"},{"text":"5","color":"#a000eb","bold":true,"type":"text"},{"text":" times.","color":"gold","bold":false,"type":"text"}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[gamemode=adventure,tag=playing,scores={boost_damage=..4},team=game,nbt={Inventory:[{id:"minecraft:purple_dye",components:{"minecraft:custom_data":{stat_boost:1b}}}]}] run function game:mechanics/stat_boosts/use_damage
return 1