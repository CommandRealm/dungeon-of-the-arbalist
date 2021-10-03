##called when the laser is over.
kill @e[type=area_effect_cloud,tag=stone_monster_laser]
effect clear @e[type=wither_skeleton,tag=boss] slowness
data modify entity @e[type=wither_skeleton,tag=boss,limit=1] Invulnerable set value 0b
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 200
