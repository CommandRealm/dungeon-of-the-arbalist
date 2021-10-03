##called to lock the cloud positions
execute at @a[tag=playing,tag=boss_clouds] run summon area_effect_cloud ~ ~5 ~ {Duration:20,Tags:["die_between_games","boss_cloud"]}
execute at @a[tag=playing,tag=boss_clouds] run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 0