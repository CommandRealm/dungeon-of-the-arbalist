##Called to disable the nameplate
data modify entity @s CustomNameVisible set value 0b
scoreboard players reset @s animation
tag @s remove nameplate_enabled