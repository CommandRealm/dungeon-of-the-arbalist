##called to change the text.


##Adding or removing.
execute if entity @s[tag=!reverse_state,tag=!temporary_tag] run function lobby:text/add_color
execute if entity @s[tag=reverse_state,tag=!temporary_tag] run function lobby:text/remove_color

tag @e[type=minecraft:armor_stand,tag=lobby_text_marker,sort=nearest,limit=1] add temporary_tag


##Updating our text
setblock 0 10 0 minecraft:air
execute if entity @s[tag=reverse_state] run function help:30fdd972e56f6b436e847ab7f3ee85d71cc482a58225190d8548a5cf96752e62
execute if entity @s[tag=!reverse_state] run function help:17442cd1bde6b89644339766543a3a9fd7a06f0c3a259957c00127ae96ff6d00
data modify entity @s CustomName set from block 0 10 0 front_text.messages[0]

tag @e[type=minecraft:armor_stand,tag=lobby_text_marker,sort=nearest,limit=1] remove temporary_tag

##Resetting our timer
scoreboard players set @s nameplate_delay 2

##removing temporary tag
tag @s remove temporary_tag
tag @s remove temporary_tag_2
return 1