##Check nearly opened room.

tag @s add opened

execute if score $time game matches 1000.. run function game:default/door/newly_opened_room

# tagging all the spawnpoints
execute positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31] add spawnable


##Initialize function (this is different because it's called when the room is spawned in.)
function game:default/door/initialize_room