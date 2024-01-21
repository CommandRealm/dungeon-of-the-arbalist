##Called to use the speed boost.



clear @s light_blue_dye{stat_boost:1b} 1
clear @s[scores={boost_speed=5..}] light_blue_dye{stat_boost:1b} 2
clear @s #minecraft:boosters{display_booster:1b}


# mastery rank up
execute if score @s boost_speed matches 5.. run scoreboard players add @s mastery_speed 1
execute if score @s boost_speed matches 5.. if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[tag=used_bundle] only advancements:volition/item-bundle

execute if score @s boost_speed matches 5.. run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Mastery ","color":"#3eefff"},{"score":{"objective":"mastery_speed","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_speed matches 5.. run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5
execute if score @s boost_speed matches ..4 run scoreboard players add @s boost_speed 1


function game:mechanics/stat_boosts/update_attributes

scoreboard players set @s new_color 56575

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s mastery_speed matches 0 run tellraw @s ["",{"text":"+8.0% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#3eefff","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s mastery_speed matches 1.. run tellraw @s ["",{"text":"+0.7% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_speed","name":"@s"},"color":"#3eefff","bold":true}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute unless score @s mastery_speed matches 1.. if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:light_blue_dye",tag:{stat_boost:1b}}]},scores={boost_speed=..4}] run function game:mechanics/stat_boosts/use_speed



function game:mechanics/get_display_boosters


