##Called to use the health boost.



clear @s lime_dye{stat_boost:1b} 1
clear @s #minecraft:boosters{display_booster:1b}
# mastery rank up
execute if score @s boost_revive matches 5.. run scoreboard players add @s mastery_revive 1
execute if score @s boost_revive matches 5.. if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[tag=used_bundle] only advancements:volition/item-bundle

execute if score @s boost_revive matches 5.. run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Mastery ","color":"green"},{"score":{"objective":"mastery_revive","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_revive matches 5.. run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5

execute if score @s boost_revive matches ..4 run scoreboard players add @s boost_revive 1

execute if score @s boost_revive matches 1 if score @s mastery_revive matches 0 run scoreboard players set @s b_revive_time 10
execute if score @s boost_revive matches 2 if score @s mastery_revive matches 0 run scoreboard players set @s b_revive_time 20
execute if score @s boost_revive matches 3 if score @s mastery_revive matches 0 run scoreboard players set @s b_revive_time 30
execute if score @s boost_revive matches 4 if score @s mastery_revive matches 0 run scoreboard players set @s b_revive_time 40
execute if score @s boost_revive matches 5 if score @s mastery_revive matches 0 run scoreboard players set @s b_revive_time 50

execute if score @s mastery_revive matches 1 run scoreboard players set @s b_revive_time 65
execute if score @s mastery_revive matches 2 run scoreboard players set @s b_revive_time 80
execute if score @s mastery_revive matches 3 run scoreboard players set @s b_revive_time 95
execute if score @s mastery_revive matches 4 run scoreboard players set @s b_revive_time 110
execute if score @s mastery_revive matches 5 run scoreboard players set @s b_revive_time 125
execute if score @s mastery_revive matches 6 run scoreboard players set @s b_revive_time 140
execute if score @s mastery_revive matches 7 run scoreboard players set @s b_revive_time 155
execute if score @s mastery_revive matches 8 run scoreboard players set @s b_revive_time 170
execute if score @s mastery_revive matches 9 run scoreboard players set @s b_revive_time 185
execute if score @s mastery_revive matches 10 run scoreboard players set @s b_revive_time 200
execute if score @s mastery_revive matches 11 run scoreboard players set @s b_revive_time 215
execute if score @s mastery_revive matches 12 run scoreboard players set @s b_revive_time 230
execute if score @s mastery_revive matches 13 run scoreboard players set @s b_revive_time 245
execute if score @s mastery_revive matches 14 run scoreboard players set @s b_revive_time 260
execute if score @s mastery_revive matches 15 run scoreboard players set @s b_revive_time 275
execute if score @s mastery_revive matches 16 run scoreboard players set @s b_revive_time 290
execute if score @s mastery_revive matches 17 run scoreboard players set @s b_revive_time 305
execute if score @s mastery_revive matches 18 run scoreboard players set @s b_revive_time 320
execute if score @s mastery_revive matches 19 run scoreboard players set @s b_revive_time 335
execute if score @s mastery_revive matches 20 run scoreboard players set @s b_revive_time 350
execute if score @s mastery_revive matches 21 run scoreboard players set @s b_revive_time 365
execute if score @s mastery_revive matches 22 run scoreboard players set @s b_revive_time 380
execute if score @s mastery_revive matches 23 run scoreboard players set @s b_revive_time 395
execute if score @s mastery_revive matches 24 run scoreboard players set @s b_revive_time 410
execute if score @s mastery_revive matches 25 run scoreboard players set @s b_revive_time 415
execute if score @s mastery_revive matches 26 run scoreboard players set @s b_revive_time 420
execute if score @s mastery_revive matches 27 run scoreboard players set @s b_revive_time 425
execute if score @s mastery_revive matches 28 run scoreboard players set @s b_revive_time 430
execute if score @s mastery_revive matches 29 run scoreboard players set @s b_revive_time 435
execute if score @s mastery_revive matches 30 run scoreboard players set @s b_revive_time 440


























scoreboard players set @s new_color 65280

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s mastery_revive matches 0 run tellraw @s ["",{"text":"+ ","color":"gold","bold":true},{"text":"Decreased revive time.","color":"green","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_revive","name":"@s"},"color":"green","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"green","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s mastery_revive matches 1.. run tellraw @s ["",{"text":"+ ","color":"gold","bold":true},{"text":"Decreased revive time.","color":"green","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_revive","name":"@s"},"color":"green","bold":true}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute unless score @s mastery_revive matches 1.. if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:lime_dye",tag:{stat_boost:1b}}]},scores={boost_revive=..4}] run function game:mechanics/stat_boosts/use_revive

function game:mechanics/get_display_boosters