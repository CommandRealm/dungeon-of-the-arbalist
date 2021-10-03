##Called when we are reviving another player.

##Adding the revive point score.

scoreboard players set $calculate calculate 1
scoreboard players operation $calculate calculate *= @s boost_revive
scoreboard players add $calculate calculate 1

scoreboard players operation @e[type=area_effect_cloud,tag=revive_aec,distance=..5] revive_progress += $calculate calculate

execute as @e[type=area_effect_cloud,tag=revive_aec,distance=..5,scores={revive_progress=320..}] at @s run function game:mechanics/revive/revive_player