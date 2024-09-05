##Called when we're looking at a door.

##What door did we hit
execute if entity @e[distance=..10,tag=default_door] run function game:door/hit_default_door

execute if entity @e[distance=..10,tag=key_door] run function game:door/hit_key_door

execute if entity @e[distance=..10,tag=crossbow_purchasable] run function game:boss/fight/stone_monster/crossbow/hit


##Dark and boss doors (aren't openable yet)
execute if entity @e[distance=..10,tag=dark_door,tag=!openable] run function game:door/hit_unopenable_dark_door

execute if entity @e[distance=..10,tag=boss_door,tag=!openable] run function game:door/hit_unopenable_boss_door



execute if entity @e[distance=..10,tag=dark_door,tag=openable] run function game:door/hit_dark_door

execute if entity @e[distance=..10,tag=boss_door,tag=openable] if entity @s[tag=!in_boss_room] run function game:door/hit_boss_door

return 1