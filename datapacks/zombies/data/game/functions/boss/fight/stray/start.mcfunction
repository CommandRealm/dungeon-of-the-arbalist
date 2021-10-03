##Start for stray.

tag @e[type=stray,tag=nixeous,limit=1] add boss
tag @e[type=stray,tag=boss,limit=1] add enemy
data merge entity @e[type=stray,tag=boss,limit=1] {NoAI:0b,Invulnerable:0b,HandItems:[{id:"minecraft:diamond_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.315},{Name:"generic.knockback_resistance",Base:1.0}],Silent:0b}
