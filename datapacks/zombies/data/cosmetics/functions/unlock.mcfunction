scoreboard players set $mod random 10
function random:random

execute unless entity @s[tag=punch_15,tag=punch_16,tag=punch_17,tag=armor_11,tag=armor_12,tag=armor_13] if score $rand random matches 1..2 run function cosmetics:unlock_legendary

execute unless entity @s[tag=unlocked_legendary] unless entity @s[tag=armor_7,tag=armor_8,tag=armor_9,tag=armor_10,tag=punch_10,tag=punch_11,tag=punch_12,tag=punch_13,tag=punch_14] if score $rand random matches 3.. run function cosmetics:unlock_epic
tag @s remove unlocked_legendary