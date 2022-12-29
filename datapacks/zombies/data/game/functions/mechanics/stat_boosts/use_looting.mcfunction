##Called to use the health boost.



clear @s yellow_dye{stat_boost:1b} 1
clear @s #minecraft:boosters{display_booster:1b}
# prestige rank up

# resetting to bass loot multiplier
execute if score @s boost_treasure matches 5.. if score @s prestige_treasure matches ..4 run scoreboard players set @s loot_multiplier 100
execute if score @s boost_treasure matches 5.. if score @s prestige_treasure matches ..4 if score @s crossbow_id matches 39 run scoreboard players add @s loot_multiplier 30

execute if score @s boost_treasure matches 5.. run scoreboard players add @s prestige_treasure 1

execute if score @s boost_treasure matches 5.. if score @s prestige_treasure matches ..5 run tellraw @s ["",{"text":" | ","color":"gold","obfuscated": true},{"text":"Prestige ","color":"#fffc00"},{"score":{"objective":"prestige_treasure","name":"@s"},"color":"#bad9e1","bold":true},{"text":" Rank ","color":"gray"},{"text":"Up","color":"white"},{"text":" | ","color":"gold","obfuscated": true}]
execute if score @s boost_treasure matches 5.. if score @s prestige_treasure matches ..5 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1 1.5

execute if score @s boost_treasure matches 5.. if score @s prestige_treasure matches ..5 run scoreboard players set @s boost_treasure 0
execute if score @s prestige_treasure matches ..5 run scoreboard players add @s boost_treasure 1

# resetting prestige to 5
execute if score @s prestige_treasure matches 6.. run scoreboard players set @s prestige_treasure 5


execute if score @s prestige_treasure matches 0 run scoreboard players add @s loot_multiplier 10
execute if score @s prestige_treasure matches 1 run scoreboard players add @s loot_multiplier 15
execute if score @s prestige_treasure matches 2 run scoreboard players add @s loot_multiplier 20
execute if score @s prestige_treasure matches 3 run scoreboard players add @s loot_multiplier 25
execute if score @s prestige_treasure matches 4 run scoreboard players add @s loot_multiplier 30
execute if score @s prestige_treasure matches 5 run scoreboard players add @s loot_multiplier 35


scoreboard players set @s new_color 16776960

function game:mechanics/stat_boosts/color/find_average_color

execute if score @s prestige_treasure matches 0 run tellraw @s ["",{"text":"+10% ","color":"gold","bold":true},{"text":"looting multiplier","color":"#fffc00","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_treasure","name":"@s"},"color":"#fffc00","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fffc00","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_treasure matches 1 run tellraw @s ["",{"text":"+15% ","color":"gold","bold":true},{"text":"looting multiplier","color":"#fffc00","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_treasure","name":"@s"},"color":"#fffc00","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fffc00","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_treasure matches 2 run tellraw @s ["",{"text":"+20% ","color":"gold","bold":true},{"text":"looting multiplier","color":"#fffc00","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_treasure","name":"@s"},"color":"#fffc00","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fffc00","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_treasure matches 3 run tellraw @s ["",{"text":"+25% ","color":"gold","bold":true},{"text":"looting multiplier","color":"#fffc00","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_treasure","name":"@s"},"color":"#fffc00","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fffc00","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_treasure matches 4 run tellraw @s ["",{"text":"+30% ","color":"gold","bold":true},{"text":"looting multiplier","color":"#fffc00","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_treasure","name":"@s"},"color":"#fffc00","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fffc00","bold":true},{"text":" times.","color":"gold","bold":false}]
execute if score @s prestige_treasure matches 5 run tellraw @s ["",{"text":"+35% ","color":"gold","bold":true},{"text":"looting multiplier","color":"#fffc00","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_treasure","name":"@s"},"color":"#fffc00","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fffc00","bold":true},{"text":" times.","color":"gold","bold":false}]

playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0
execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:yellow_dye",tag:{stat_boost:1b}}]},scores={boost_looting=..4}] run function game:mechanics/stat_boosts/use_looting