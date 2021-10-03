##Called when someone presses the start button.

##Resetting the button and trapdor

setblock 0 92 28 air destroy
setblock 1 92 29 minecraft:iron_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=false]
setblock 0 93 29 minecraft:iron_trapdoor[facing=west,half=bottom,open=false,powered=false,waterlogged=false]
setblock -1 92 29 minecraft:iron_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
setblock 0 91 29 minecraft:iron_trapdoor[facing=west,half=top,open=false,powered=false,waterlogged=false]


execute if score $countdown pregame matches 0.. run tag @p add temporary_tag
execute if score $countdown pregame matches 0.. run function lobby:pregame/countdown_end
execute if score $ready_players pregame matches 1.. unless score $countdown pregame matches 0.. unless entity @a[tag=temporary_tag] run function lobby:pregame/start_countdown
execute if score $ready_players pregame matches ..0 run function pregame:not_enough_players

tag @a remove temporary_tag

##Setting up button delay
scoreboard players set $button pregame 10