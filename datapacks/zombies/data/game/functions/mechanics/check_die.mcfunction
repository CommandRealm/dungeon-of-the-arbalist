##called to check how we should die

execute if entity @s[team=enemy] run function game:mechanics/dead/die

execute if entity @s[team=!enemy] run function game:mechanics/die