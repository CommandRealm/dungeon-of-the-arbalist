##Called to use the quiver boost.



clear @s orange_dye{stat_boost:1b} 1
clear @s[scores={boost_quiver=5..}] orange_dye{stat_boost:1b} 2
clear @s #minecraft:boosters{display_booster:1b}
# mastery rank up

execute if score @s boost_quiver matches 5.. run scoreboard players add @s mastery_quiver 1
execute if score @s boost_quiver matches 5.. if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[tag=used_bundle] only advancements:volition/item-bundle

execute if score @s boost_quiver matches 5.. if score @s mastery_quiver matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Mastery ","color":"#fca50d"},{"score":{"objective":"mastery_quiver","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_quiver matches 5.. if score @s mastery_quiver matches ..5 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5


execute if entity @s[tag=trial_four_in_the_quiver] run function game:trials/four_in_the_quiver/refill_quiver

execute if score @s boost_quiver matches ..4 run scoreboard players add @s boost_quiver 1
execute if score @s mastery_quiver matches ..0 run scoreboard players add @s[tag=!trial_four_in_the_quiver] quiver 4
execute if score @s mastery_quiver matches 1.. run scoreboard players add @s[tag=!trial_four_in_the_quiver] quiver 9

clear @s arrow

scoreboard players set @s new_color 16744192

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s mastery_quiver matches 0 run tellraw @s ["",{"text":"+5 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_quiver","name":"@s"},"color":"#fca50d","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fca50d","bold":true},{"text":" times.","color":"gold","bold":false}]

execute if score @s mastery_quiver matches 1.. run tellraw @s  ["",{"text":"+9 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have reached ","color":"gold"},{"text":"Mastery ","color":"#c0a379"},{"score":{"objective":"mastery_quiver","name":"@s"},"color":"#fca50d","bold":true}]

playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute unless score @s mastery_quiver matches 1.. if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:orange_dye",tag:{stat_boost:1b}}]},scores={boost_quiver=..4}] run function game:mechanics/stat_boosts/use_quiver


function game:mechanics/get_display_boosters