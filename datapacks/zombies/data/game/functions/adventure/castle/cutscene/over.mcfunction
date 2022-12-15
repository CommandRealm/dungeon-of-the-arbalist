##called when the cutscene is over.
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.5
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.594604
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.749154
execute at @a[tag=playing] run stopsound @a * music.nether.basalt_deltas
execute at @a[tag=playing] run scoreboard players set $cutscene game 0
execute at @a[tag=playing] run scoreboard players set $time game 999
function game:mechanics/active_efficient
tp @a[tag=playing] 5000 88 -1 0 0
gamemode adventure @a[tag=playing]

##Killing enemy
kill @e[type=wither_skeleton,tag=cutscene_entity]
kill @e[type=armor_stand,tag=dungeon_cutscene_camera]

tag @a[tag=playing] add mechanics

function game:adventure/start_gameplay