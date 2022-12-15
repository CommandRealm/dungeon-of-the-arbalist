##called when the cutscene is over.

execute at @a[tag=playing] anchored eyes run particle falling_dust black_concrete ^ ^ ^0.75 0.33 0.33 0.33 0 200 force
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.5
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.594604
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.749154
execute at @a[tag=playing] run stopsound @s * ambient.underwater.loop.additions.ultra_rare
execute at @a[tag=playing] run forceload remove all
execute at @a[tag=playing] run scoreboard players set $cutscene game 0
execute at @a[tag=playing] run scoreboard players set $time game 1

tag @a[tag=playing] add mechanics

function game:mechanics/active_efficient

tp @a[tag=playing] 2000 1 0 90 90
gamemode adventure @a[tag=playing]