##Called when a block hits a player.

##Effects
execute if entity @s[tag=essence_grass] run effect give @a[tag=playing,gamemode=adventure,distance=..1.5] instant_damage 1 0 false
execute if entity @s[tag=essence_mossy] run effect give @a[tag=playing,gamemode=adventure,distance=..1.5] instant_damage 1 1 false
execute if entity @s[tag=essence_leaves] run effect give @a[tag=playing,gamemode=adventure,distance=..1.5] nausea 10 0 false
execute if entity @s[tag=essence_bee] run effect give @a[tag=playing,gamemode=adventure,distance=..1.5] slowness 15 1 false
execute if entity @s[tag=essence_melon] unless score $difficulty settings matches 5.. run effect give @a[tag=playing,gamemode=adventure,distance=..1.5] regeneration 5 0 false
execute if entity @s[tag=essence_melon] if score $healthshare modifiers matches 1 unless score $difficulty settings matches 5.. run effect give @a[tag=playing,gamemode=adventure] regeneration 5 0 false

function game:boss/fight/forest_essence/block/destroy_block


