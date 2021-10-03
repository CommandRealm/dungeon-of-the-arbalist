##Called when we're looking at a door.

##What door did we hit
execute if entity @e[tag=default_door,distance=..10] run function game:door/hit_default_door

execute if entity @e[tag=key_door,distance=..10] run function game:door/hit_key_door

execute if entity @e[tag=crossbow_purchasable,distance=..10] run function game:boss/fight/stone_monster/crossbow/hit


##Dark and boss doors (aren't openable yet)
execute if entity @e[tag=dark_door,distance=..10,tag=!openable] run function game:door/hit_unopenable_dark_door

execute if entity @e[tag=boss_door,distance=..10,tag=!openable] run function game:door/hit_unopenable_boss_door



execute if entity @e[tag=dark_door,distance=..10,tag=openable] run function game:door/hit_dark_door

execute if entity @e[tag=boss_door,distance=..10,tag=openable] if entity @s[tag=!in_boss_room] run function game:door/hit_boss_door
