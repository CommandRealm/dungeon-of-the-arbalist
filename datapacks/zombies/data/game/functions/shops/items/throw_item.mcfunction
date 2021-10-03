##called when we drop a droppable item


execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{tag:{throwable:1b}}}] at @s run function game:shops/items/throwable/throw

##when a player drops white dye
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:phantom_membrane"}}] at @s run function game:shops/items/use_glowing_wave

##when a player drops zombie head
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:zombie_head"}}] at @s run function game:shops/items/summon_treasure_zombie

##when a player drops a chest
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:chest"}}] at @s run function game:shops/items/treasure_chest/use

##when a player drops a utilty chest
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:ender_chest"}}] at @s run function game:shops/items/utility_chest/use

##when a player drops a healing chest
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:red_shulker_box"}}] at @s run function game:shops/items/healing_chest/use

##when a player drops a healing chest
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:creeper_banner_pattern"}}] at @s run function game:shops/items/boss_scroll/use

kill @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1]