# called when we lose treasure

# subtracting treasure
scoreboard players operation @s treasure -= @s remove_treasure

# if we have less than 0 go to 0
scoreboard players set @s[scores={treasure=..-1}] treasure 0

# adjusting our new treasure score
scoreboard players operation @s new_treasure -= @s remove_treasure

# adjusting our new treasure score
scoreboard players operation @s[advancements={game:enemy_damage/bandit=true}] local_treasure_lost += @s remove_treasure

execute if score @s local_treasure_lost matches 3000.. unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only advancements:volition/enemy-bandit

# setting ab delay
scoreboard players set @s action_bar_delay 20

# treasure
playsound minecraft:block.note_block.chime master @s[tag=play_lose_treasure_sound] ~ ~ ~ 0.5 0.5
playsound minecraft:block.note_block.bit master @s[tag=play_lose_treasure_sound] ~ ~ ~ 0.5 0.594604
playsound minecraft:block.note_block.chime master @s[tag=play_lose_treasure_sound] ~ ~ ~ 0.5 0.707107
playsound minecraft:block.note_block.bit master @s[tag=play_lose_treasure_sound] ~ ~ ~ 0.5 0.840896

tag @s remove play_lose_treasure_sound