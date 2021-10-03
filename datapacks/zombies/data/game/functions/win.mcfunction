##Called when you win.


##Resetting score
scoreboard players reset @s death

gamemode spectator @s

clear @s

effect give @s resistance 100000 255 true


##
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 2
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100000 0

##Title
title @s title [{"text":""}]
title @s subtitle [{"text":"You won!","color":"green"}]

scoreboard players add @s global_wins 1

##dead team
team join won @s

##Death message.
tellraw @a[tag=playing] [{"selector":"@s"},{"text":" escaped the dungeon.","color":"gray"}]


##Updating our difficulty beaten
execute if score $difficulty settings matches 0 run scoreboard players set @s[scores={global_difficult=..-1}] global_difficult 0
execute if score $difficulty settings matches 1 run scoreboard players set @s[scores={global_difficult=..0}] global_difficult 1
execute if score $difficulty settings matches 2 run scoreboard players set @s[scores={global_difficult=..1}] global_difficult 2
execute if score $difficulty settings matches 3 run scoreboard players set @s[scores={global_difficult=..2}] global_difficult 3
execute if score $difficulty settings matches 4 run scoreboard players set @s[scores={global_difficult=..3}] global_difficult 4
execute if score $difficulty settings matches 5 run scoreboard players set @s[scores={global_difficult=..4}] global_difficult 5
execute if score $difficulty settings matches 6 run scoreboard players set @s[scores={global_difficult=..5}] global_difficult 6

##If this is adventure
execute unless score $mode settings matches 0 if score $starting_players game matches 1 run function game:adventure/win

##Advancements
advancement grant @s only advancements:wins-supereasy
execute if score $difficulty settings matches 1.. run advancement grant @s only advancements:wins-easy
execute if score $difficulty settings matches 2.. run advancement grant @s only advancements:wins-medium

execute unless score $difficulty settings matches -1 if score $mode settings matches 0 run advancement grant @s only advancements:wins-default
execute unless score $difficulty settings matches -1 if score $mode settings matches 1 run advancement grant @s only advancements:wins-pug
execute unless score $difficulty settings matches -1 if score $mode settings matches 2 run advancement grant @s only advancements:wins-captain


execute if score $difficulty settings matches 5 run advancement grant @s only advancements:hidden/hidden-hardcore
execute if score $difficulty settings matches 6 run advancement grant @s only advancements:hidden/hidden-nightmare


advancement grant @s[advancements={advancements:wins-supereasy=true,advancements:wins-easy=true,advancements:wins-medium=true,advancements:wins-default=true,advancements:wins-pug=true,advancements:wins-captain=true}] only advancements:wins-all