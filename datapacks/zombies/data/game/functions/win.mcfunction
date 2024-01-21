##Called when you win.


##Resetting score
scoreboard players reset @s death

gamemode spectator @s

clear @s

effect give @s resistance infinite 255 true


##
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 2
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100000 0

##Title
title @s title [{"text":""}]
title @s times 0 25 5
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

execute unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score $mode settings matches 0 run advancement grant @s only advancements:wins-default
execute unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score $mode settings matches 1 run advancement grant @s only advancements:wins-pug
execute unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if score $mode settings matches 2 run advancement grant @s only advancements:wins-captain


execute if score $difficulty settings matches 5 run advancement grant @s only advancements:hidden/hidden-hardcore
execute if score $difficulty settings matches 6 run advancement grant @s only advancements:hidden/hidden-nightmare


# if this is default add default wins
execute if score $mode settings matches 0 run function leaderboards:dungeon/personal_best
advancement grant @s[advancements={advancements:wins-supereasy=true,advancements:wins-easy=true,advancements:wins-medium=true,advancements:wins-default=true,advancements:wins-pug=true,advancements:wins-captain=true}] only advancements:wins-all



# if this is default
execute if score $mode settings matches 0 run scoreboard players operation @s wave_reached = $wave game



# updating trial wins
scoreboard players add @s[tag=selected_trial_default] win_trial_default 1
scoreboard players add @s[tag=selected_trial_shopless] win_trial_shopless 1
scoreboard players add @s[tag=selected_trial_poverty] win_trial_poverty 1
scoreboard players add @s[tag=selected_trial_firetrail] win_trial_firetrail 1
scoreboard players add @s[tag=selected_trial_four_in_the_quiver] win_trial_four_in_the_quiver 1
scoreboard players add @s[tag=selected_trial_gloom] win_trial_gloom 1
scoreboard players add @s[tag=selected_trial_collector] win_trial_collector 1
scoreboard players add @s[tag=selected_trial_detonation] win_trial_detonation 1
scoreboard players add @s[tag=selected_trial_scramble] win_trial_scramble 1
scoreboard players add @s[tag=trial_random] win_trial_random 1