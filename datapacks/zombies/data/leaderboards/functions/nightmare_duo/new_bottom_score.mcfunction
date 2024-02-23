##Called to give us the new bottom score.

##Tag so we know we've already gotten a new highscore.
tag @s add temporary_tag

execute unless entity @e[type=armor_stand,tag=nightmare_leaderboard2,tag=temporary_tag_2] run tag @e[type=armor_stand,tag=nightmare_leaderboard2,scores={leaderboard_pos=3}] add temporary_tag_2

##Setting third to be our score.
loot replace entity @e[type=armor_stand,tag=nightmare_leaderboard2,tag=temporary_tag_2,limit=1] armor.head loot game:head
data modify block 0 10 0 front_text.messages[1] set value '[{"text":"","italic":false},{"selector":"@p[tag=temporary_tag]"},{"text":"\'s ","color":"yellow"},{"text":"highest ","color":"yellow"},{"text":"wave","color":"green"},{"text":": ","color":"gray"},{"score":{"objective":"leaderboard_nightmare_wave2","name":"@p[tag=temporary_tag]"},"color":"gold"}]'
data modify entity @e[type=armor_stand,tag=nightmare_leaderboard2,tag=temporary_tag_2,limit=1] CustomName set from block 0 10 0 front_text.messages[1]

scoreboard players operation @e[type=armor_stand,tag=nightmare_leaderboard2,tag=temporary_tag_2,limit=1] leaderboard_nightmare_wave2 = @s wave_reached
scoreboard players operation @e[type=armor_stand,tag=nightmare_leaderboard2,tag=temporary_tag_2,limit=1] lobby_id = @s lobby_id


##recalculating the leaderboard positions
function leaderboards:nightmare_duo/calculate_standings