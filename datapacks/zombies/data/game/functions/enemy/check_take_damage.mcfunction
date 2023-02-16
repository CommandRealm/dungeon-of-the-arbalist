# called to check take damage


execute unless entity @s[type=zombie,tag=phantom_part] run function game:enemy/take_damage
execute if entity @s[type=zombie,tag=phantom_part,predicate=game:luck] run function game:enemy/volition/phantom/targetting_phantom_to_take_damage