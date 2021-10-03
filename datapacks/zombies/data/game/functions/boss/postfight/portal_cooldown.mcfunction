##Portal cooldown
scoreboard players remove $portal boss 1
execute if score $portal boss matches 0 run function game:boss/postfight/open_portal