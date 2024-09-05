##Start for stray.

tag @e[type=minecraft:stray,tag=nixeous,limit=1] add boss
tag @e[type=minecraft:stray,tag=boss,limit=1] add enemy
data merge entity @e[type=minecraft:stray,tag=boss,limit=1] {NoAI:0b,Invulnerable:0b,HandItems:[{id:"minecraft:diamond_hoe",count:1},{}],Silent:0b,attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.315d},{id:"minecraft:generic.knockback_resistance",base:1.0d}]}

return 1