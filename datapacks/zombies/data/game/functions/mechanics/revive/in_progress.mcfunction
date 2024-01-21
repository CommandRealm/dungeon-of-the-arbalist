##Called when we are reviving another player.

##Adding the revive point score.

##setting base
scoreboard players set $calculate calculate 50

##Getting remainder
scoreboard players operation @s revive_remainder += @s b_revive_time
execute if score @s revive_remainder matches 50.. run function game:mechanics/revive/revive_timer_remainder
##Division
scoreboard players operation $calculate calculate /= $50 number

scoreboard players operation @e[type=area_effect_cloud,tag=revive_aec,distance=..5] revive_progress += $calculate calculate

execute as @e[type=area_effect_cloud,tag=revive_aec,distance=..5,scores={revive_progress=320..}] at @s run function game:mechanics/revive/revive_player