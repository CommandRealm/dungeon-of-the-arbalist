##Called to use the quiver boost.



clear @s orange_dye{stat_boost:1b} 1
clear @s #minecraft:boosters{display_booster:1b}
# prestige rank up

execute if score @s boost_quiver matches 5.. run scoreboard players add @s prestige_quiver 1
execute if score @s boost_quiver matches 5.. if score @s prestige_quiver matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Prestige ","color":"#fca50d"},{"score":{"objective":"prestige_quiver","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_quiver matches 5.. if score @s prestige_quiver matches ..5 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5



execute if score @s boost_quiver matches 5.. if score @s prestige_quiver matches ..5 run scoreboard players set @s boost_quiver 0
execute if score @s prestige_quiver matches ..5 run scoreboard players add @s boost_quiver 1

# resetting prestige to 5
execute if score @s prestige_quiver matches 6.. run scoreboard players set @s prestige_quiver 5


execute if score @s prestige_quiver matches 0 run scoreboard players add @s quiver 5
execute if score @s prestige_quiver matches 1 run scoreboard players add @s quiver 7
execute if score @s prestige_quiver matches 2 run scoreboard players add @s quiver 9
execute if score @s prestige_quiver matches 3 run scoreboard players add @s quiver 11
execute if score @s prestige_quiver matches 4 run scoreboard players add @s quiver 13
execute if score @s prestige_quiver matches 5 run scoreboard players add @s quiver 15
clear @s arrow

scoreboard players set @s new_color 16744192

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s prestige_quiver matches 0 run tellraw @s ["",{"text":"+5 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_quiver","name":"@s"},"color":"#fca50d","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fca50d","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_quiver matches 1 run tellraw @s ["",{"text":"+7 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_quiver","name":"@s"},"color":"#fca50d","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fca50d","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_quiver matches 2 run tellraw @s ["",{"text":"+9 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_quiver","name":"@s"},"color":"#fca50d","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fca50d","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_quiver matches 3 run tellraw @s ["",{"text":"+11 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_quiver","name":"@s"},"color":"#fca50d","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fca50d","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_quiver matches 4 run tellraw @s ["",{"text":"+13 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_quiver","name":"@s"},"color":"#fca50d","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fca50d","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_quiver matches 5.. run tellraw @s ["",{"text":"+15 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_quiver","name":"@s"},"color":"#fca50d","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fca50d","bold":true},{"text":" times.","color":"gold","bold":false}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:orange_dye",tag:{stat_boost:1b}}]},scores={boost_quiver=..4}] run function game:mechanics/stat_boosts/use_quiver


