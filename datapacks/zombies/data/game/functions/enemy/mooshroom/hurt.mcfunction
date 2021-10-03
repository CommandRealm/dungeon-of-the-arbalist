summon area_effect_cloud ~ ~ ~ {Radius:12f,RadiusPerTick:-.25f,Duration:100,Color:6161412,Potion:"minecraft:strong_poison"}
data merge entity @s {Type:"brown"}
effect give @s regeneration 4 0 false
tag @s add mooshroom_regen