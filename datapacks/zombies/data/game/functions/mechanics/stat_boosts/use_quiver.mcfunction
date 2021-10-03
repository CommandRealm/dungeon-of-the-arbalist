##Called to use the health boost.



clear @s orange_dye{stat_boost:1b} 1


scoreboard players add @s boost_quiver 1

scoreboard players add @s quiver 5
clear @s arrow

scoreboard players set @s new_color 16744192

function game:mechanics/stat_boosts/color/find_average_color

tellraw @s ["",{"text":"+5 ","color":"gold","bold":true},{"text":"arrow quiver capacity","color":"#fca50d","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_quiver","name":"@s"},"color":"#fca50d","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fca50d","bold":true},{"text":" times.","color":"gold","bold":false}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:orange_dye",tag:{stat_boost:1b}}]},scores={boost_quiver=..4}] run function game:mechanics/stat_boosts/use_quiver

