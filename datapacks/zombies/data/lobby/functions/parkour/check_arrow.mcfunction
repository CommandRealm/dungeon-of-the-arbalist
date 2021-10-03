##Called to see if we dropped the arrow and then replace it.

execute if score @s end_parkour matches 1.. run function lobby:parkour/end

execute if entity @s[tag=parkour] run function lobby:parkour/get_arrow