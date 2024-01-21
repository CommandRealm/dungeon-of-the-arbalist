# called to check take damage


execute unless entity @s[type=zombie,tag=phantom_part] run function game:enemy/take_melee_damage
execute if entity @s[type=zombie,tag=phantom_part,predicate=!game:luck] run function game:enemy/volition/phantom/targetting_phantom_to_melee_take_damage