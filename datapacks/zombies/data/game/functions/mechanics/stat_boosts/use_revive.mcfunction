##Called to use the health boost.



clear @s lime_dye{stat_boost:1b} 1


scoreboard players add @s boost_revive 1

scoreboard players set @s new_color 65280

function game:mechanics/stat_boosts/color/find_average_color

tellraw @s ["",{"text":"+ ","color":"gold","bold":true},{"text":"Decreased revive time.","color":"green","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_revive","name":"@s"},"color":"green","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"green","bold":true},{"text":" times.","color":"gold","bold":false}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:lime_dye",tag:{stat_boost:1b}}]},scores={boost_revive=..4}] run function game:mechanics/stat_boosts/use_revive