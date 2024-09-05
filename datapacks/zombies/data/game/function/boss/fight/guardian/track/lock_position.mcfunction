##Called to lock the beam's position.

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Tags:["die_between_games","targeted_point"]}
playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 0.75
return 1