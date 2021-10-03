##Check nearly opened room.

tag @s add opened

execute if score $time game matches 1000.. run function game:default/door/newly_opened_room

##Initialize function (this is different because it's called when the room is spawned in.)
function game:default/door/initialize_room