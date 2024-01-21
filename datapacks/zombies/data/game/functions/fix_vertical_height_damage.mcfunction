# called to fix the vertical height damage

# seeing our gamemode
# execute if entity @s[gamemode=survival] run scoreboard players set $mode_when_damaged calculate 0
# execute if entity @s[gamemode=creative] run scoreboard players set $mode_when_damaged calculate 1
# execute if entity @s[gamemode=adventure] run scoreboard players set $mode_when_damaged calculate 2
# execute if entity @s[gamemode=spectator] run scoreboard players set $mode_when_damaged calculate 3
# 
# 
# # changing our gamemode
# gamemode spectator @s


# changing it back
#execute if score $mode_when_damaged calculate matches 0 run gamemode survival @s
#execute if score $mode_when_damaged calculate matches 1 run gamemode creative @s
#execute if score $mode_when_damaged calculate matches 2 run gamemode adventure @s
#execute if score $mode_when_damaged calculate matches 3 run gamemode spectator @s





# GAMEMODE DIDNT WORK SO JUST RESORTING TO TP
# tp @s @s

# removing advancemenbt
advancement revoke @s only game:fix_vertical_height_damage