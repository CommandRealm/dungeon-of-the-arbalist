##Called to shoot arrows.

execute at @e[type=magma_cube,tag=boss,limit=1] run summon arrow ~3 ~1.5 ~ {Fire:1000s,Motion:[1.0d,0.0d,0.0d]}
execute at @e[type=magma_cube,tag=boss,limit=1] run summon arrow ~-3 ~1.5 ~ {Fire:1000s,Motion:[-1.0d,0.0d,0.0d]}
execute at @e[type=magma_cube,tag=boss,limit=1] run summon arrow ~ ~1.5 ~3 {Fire:1000s,Motion:[0.0d,0.0d,1.0d]}
execute at @e[type=magma_cube,tag=boss,limit=1] run summon arrow ~ ~1.5 ~-3 {Fire:1000s,Motion:[0.0d,0.0d,-1.0d]}

execute at @e[type=magma_cube,tag=boss,limit=1] run summon arrow ~3 ~1.5 ~3 {Fire:1000s,Motion:[1.0d,0.0d,1.0d]}
execute at @e[type=magma_cube,tag=boss,limit=1] run summon arrow ~3 ~1.5 ~-3 {Fire:1000s,Motion:[1.0d,0.0d,-1.0d]}
execute at @e[type=magma_cube,tag=boss,limit=1] run summon arrow ~-3 ~1.5 ~3 {Fire:1000s,Motion:[-1.0d,0.0d,1.0d]}
execute at @e[type=magma_cube,tag=boss,limit=1] run summon arrow ~-3 ~1.5 ~-3 {Fire:1000s,Motion:[-1.0d,0.0d,-1.0d]}

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 40