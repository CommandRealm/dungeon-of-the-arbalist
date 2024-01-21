##Called to use the health boost.



clear @s lime_dye{stat_boost:1b} 1
clear @s #minecraft:boosters{display_booster:1b}
# prestige rank up
execute if score @s boost_revive matches 5.. run scoreboard players add @s prestige_revive 1
execute if score @s boost_revive matches 5.. if score @s prestige_revive matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Prestige ","color":"green"},{"score":{"objective":"prestige_revive","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_revive matches 5.. if score @s prestige_revive matches ..5 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5

execute if score @s boost_revive matches 5.. if score @s prestige_revive matches ..5 run scoreboard players set @s boost_revive 0
execute if score @s prestige_revive matches ..5 run scoreboard players add @s boost_revive 1

# resetting prestige to 5
execute if score @s prestige_revive matches 6.. run scoreboard players set @s prestige_revive 5

execute if score @s boost_revive matches 1 if score @s prestige_revive matches 0 run scoreboard players set @s b_revive_time 10
execute if score @s boost_revive matches 2 if score @s prestige_revive matches 0 run scoreboard players set @s b_revive_time 20
execute if score @s boost_revive matches 3 if score @s prestige_revive matches 0 run scoreboard players set @s b_revive_time 30
execute if score @s boost_revive matches 4 if score @s prestige_revive matches 0 run scoreboard players set @s b_revive_time 40
execute if score @s boost_revive matches 5 if score @s prestige_revive matches 0 run scoreboard players set @s b_revive_time 50

execute if score @s boost_revive matches 1 if score @s prestige_revive matches 1 run scoreboard players set @s b_revive_time 25
execute if score @s boost_revive matches 2 if score @s prestige_revive matches 1 run scoreboard players set @s b_revive_time 40
execute if score @s boost_revive matches 3 if score @s prestige_revive matches 1 run scoreboard players set @s b_revive_time 55
execute if score @s boost_revive matches 4 if score @s prestige_revive matches 1 run scoreboard players set @s b_revive_time 70
execute if score @s boost_revive matches 5 if score @s prestige_revive matches 1 run scoreboard players set @s b_revive_time 85

execute if score @s boost_revive matches 1 if score @s prestige_revive matches 2 run scoreboard players set @s b_revive_time 48
execute if score @s boost_revive matches 2 if score @s prestige_revive matches 2 run scoreboard players set @s b_revive_time 70
execute if score @s boost_revive matches 3 if score @s prestige_revive matches 2 run scoreboard players set @s b_revive_time 93
execute if score @s boost_revive matches 4 if score @s prestige_revive matches 2 run scoreboard players set @s b_revive_time 115
execute if score @s boost_revive matches 5 if score @s prestige_revive matches 2 run scoreboard players set @s b_revive_time 138

execute if score @s boost_revive matches 1 if score @s prestige_revive matches 3 run scoreboard players set @s b_revive_time 81
execute if score @s boost_revive matches 2 if score @s prestige_revive matches 3 run scoreboard players set @s b_revive_time 115
execute if score @s boost_revive matches 3 if score @s prestige_revive matches 3 run scoreboard players set @s b_revive_time 149
execute if score @s boost_revive matches 4 if score @s prestige_revive matches 3 run scoreboard players set @s b_revive_time 183
execute if score @s boost_revive matches 5 if score @s prestige_revive matches 3 run scoreboard players set @s b_revive_time 216

execute if score @s boost_revive matches 1 if score @s prestige_revive matches 4 run scoreboard players set @s b_revive_time 132
execute if score @s boost_revive matches 2 if score @s prestige_revive matches 4 run scoreboard players set @s b_revive_time 183
execute if score @s boost_revive matches 3 if score @s prestige_revive matches 4 run scoreboard players set @s b_revive_time 233
execute if score @s boost_revive matches 4 if score @s prestige_revive matches 4 run scoreboard players set @s b_revive_time 284
execute if score @s boost_revive matches 5 if score @s prestige_revive matches 4 run scoreboard players set @s b_revive_time 334

execute if score @s boost_revive matches 1 if score @s prestige_revive matches 5 run scoreboard players set @s b_revive_time 208
execute if score @s boost_revive matches 2 if score @s prestige_revive matches 5 run scoreboard players set @s b_revive_time 284
execute if score @s boost_revive matches 3 if score @s prestige_revive matches 5 run scoreboard players set @s b_revive_time 360
execute if score @s boost_revive matches 4 if score @s prestige_revive matches 5 run scoreboard players set @s b_revive_time 436
execute if score @s boost_revive matches 5 if score @s prestige_revive matches 5 run scoreboard players set @s b_revive_time 512

scoreboard players set @s new_color 65280

function game:mechanics/stat_boosts/color/find_average_color

tellraw @s ["",{"text":"+ ","color":"gold","bold":true},{"text":"Decreased revive time.","color":"green","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_revive","name":"@s"},"color":"green","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"green","bold":true},{"text":" times.","color":"gold","bold":false}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:lime_dye",tag:{stat_boost:1b}}]},scores={boost_revive=..4}] run function game:mechanics/stat_boosts/use_revive