##Death timer over

##specifics
execute if entity @s[tag=whirlpool] run function game:shops/items/whirlpool/die
execute if entity @s[tag=knight_zombie_torthar] run function game:boss/fight/mummy/knight_die

tp @s 0 0 0
kill @s