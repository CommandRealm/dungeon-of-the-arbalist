##Called to use the speed boost.



clear @s light_blue_dye{stat_boost:1b} 1


scoreboard players add @s boost_speed 1

function game:mechanics/stat_boosts/update_attributes

scoreboard players set @s new_color 56575

function game:mechanics/stat_boosts/color/find_average_color

tellraw @s ["",{"text":"+8% ","color":"gold","bold":true},{"text":"speed increase","color":"#3eefff","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_speed","name":"@s"},"color":"#3eefff","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#3eefff","bold":true},{"text":" times.","color":"gold","bold":false}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:light_blue_dye",tag:{stat_boost:1b}}]},scores={boost_speed=..4}] run function game:mechanics/stat_boosts/use_speed






