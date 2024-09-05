summon minecraft:area_effect_cloud ~ ~ ~ {Radius:12.0f,RadiusPerTick:-0.25f,Duration:100,potion_contents:{custom_color:6161412,potion:"minecraft:strong_poison"}}
data merge entity @s {Type:"brown"}
effect give @s minecraft:regeneration 4 0 false
tag @s add mooshroom_regen
return 1