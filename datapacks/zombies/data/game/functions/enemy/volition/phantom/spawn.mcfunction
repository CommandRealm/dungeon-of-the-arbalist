# called to summon phantom
execute if data storage game:enemy {SpawnType:"dota:phantom"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {IsBaby:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:1000000,Amplifier:0,ShowParticles:false},{Id:28,Duration:1000000,Amplifier:0,ShowParticles:false}],Tags:["phantom_part","die_between_games","needs_initialization","skip_for_wave_count","enemy","no_damage_indicator"],Attributes:[{Name:"generic.movement_speed",Base:0.26d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:2.0}],Passengers:[{id:"minecraft:item_display",Tags:["die_between_games","die_between_waves","phantom_part"],Passengers:[{id:"minecraft:phantom",Size:0,Tags:["phantom_part","die_between_games","enemy","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,Attributes:[{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:2.0}]}]}]}

# giving them all the same id
scoreboard players set @e[type=phantom,tag=phantom_part,tag=needs_initialization] enemy_health 120
scoreboard players set @e[type=phantom,tag=phantom_part,tag=needs_initialization] enemy_loot_table 1


scoreboard players set @e[type=zombie,tag=phantom_part,tag=needs_initialization] enemy_health 10000000
scoreboard players add $mob_id id 1

scoreboard players operation @e[type=phantom,tag=phantom_part,tag=needs_initialization] id = $mob_id id

execute as @e[type=phantom,tag=phantom_part,tag=needs_initialization] at @s run scoreboard players operation @e[type=zombie,tag=phantom_part,tag=needs_initialization] id = @s id


execute as @e[type=#minecraft:enemy,tag=needs_initialization] at @s run function game:enemy/initialize


