# called to check take damage


execute unless entity @s[type=minecraft:zombie,tag=phantom_part] run function game:enemy/take_damage
execute if entity @s[type=minecraft:zombie,tag=phantom_part,predicate=game:luck] run function game:enemy/volition/phantom/targetting_phantom_to_take_damage
return 1