# called when we lose treasure

# subtracting treasure
scoreboard players operation @s treasure -= @s remove_treasure

# if we have less than 0 go to 0
scoreboard players set @s[scores={treasure=..-1}] treasure 0

# adjusting our new treasure score
scoreboard players operation @s new_treasure -= @s remove_treasure

# setting ab delay
scoreboard players set @s action_bar_delay 20

# treasure
playsound minecraft:block.note_block.chime master @s[tag=play_lose_treasure_sound] ~ ~ ~ 0.5 0.5
playsound minecraft:block.note_block.bit master @s[tag=play_lose_treasure_sound] ~ ~ ~ 0.5 0.594604
playsound minecraft:block.note_block.chime master @s[tag=play_lose_treasure_sound] ~ ~ ~ 0.5 0.707107
playsound minecraft:block.note_block.bit master @s[tag=play_lose_treasure_sound] ~ ~ ~ 0.5 0.840896

tag @s remove play_lose_treasure_sound