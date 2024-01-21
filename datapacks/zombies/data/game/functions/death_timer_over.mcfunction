##Death timer over

##specifics
execute if entity @s[tag=whirlpool] run function game:shops/items/whirlpool/die
execute if entity @s[tag=knight_zombie_torthar] run function game:boss/fight/mummy/knight_die
execute if entity @s[tag=mob_spawner_hitbox] run function game:enemy/volition/mob_spawner/die
execute if entity @s[type=phantom,tag=phantom_part] run function game:enemy/volition/phantom/die



tp @s 0 0 0
kill @s