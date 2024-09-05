##called when the laser is over.
kill @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser]
effect clear @e[type=minecraft:wither_skeleton,tag=boss] minecraft:slowness
data modify entity @e[type=minecraft:wither_skeleton,tag=boss,limit=1] Invulnerable set value 0b
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 200

return 1