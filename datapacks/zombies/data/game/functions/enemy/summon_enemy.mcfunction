##Randomizing the mob
tag @s add temporary_tag

##Setting the "wave" (if entity @s is so that this can be called from a function w/o setting that part.)
execute if score $mode settings matches 1.. if entity @s run scoreboard players operation $wave game = @s wave_id

execute unless score $chosen_modifier_enemy calculate matches -1 run scoreboard players operation $rand random = $chosen_modifier_enemy calculate
execute if score $chosen_modifier_enemy calculate matches 1 run scoreboard players set $rand random -1

# setting storage value to be blank just in case
data modify storage game:enemy SpawnType set value ""
execute if score $wave game matches 1..2 run function game:enemy/wave/1-2
execute if score $wave game matches 3..4 run function game:enemy/wave/3-4
execute if score $wave game matches 5 run function game:enemy/wave/5
execute if score $wave game matches 6 run function game:enemy/wave/6
execute if score $wave game matches 7..8 run function game:enemy/wave/7-8
execute if score $wave game matches 9..10 run function game:enemy/wave/9-10
execute if score $wave game matches 11..12 run function game:enemy/wave/11-12
execute if score $volition game matches 1 if score $wave game matches 13..14 run function game:enemy/wave/13
execute if score $volition game matches 0 if score $wave game matches 13.. run function game:enemy/wave/13
execute if score $volition game matches 1 if score $wave game matches 15..16 run function game:enemy/wave/15
execute if score $volition game matches 1 if score $wave game matches 17..18 run function game:enemy/wave/17
execute if score $volition game matches 1 if score $wave game matches 19..20 run function game:enemy/wave/19
execute if score $volition game matches 1 if score $wave game matches 21..23 run function game:enemy/wave/21
execute if score $volition game matches 1 if score $wave game matches 24..26 run function game:enemy/wave/24
execute if score $volition game matches 1 if score $wave game matches 27..29 run function game:enemy/wave/27
execute if score $volition game matches 1 if score $wave game matches 30..33 run function game:enemy/wave/30
execute if score $volition game matches 1 if score $wave game matches 34..37 run function game:enemy/wave/34
execute if score $volition game matches 1 if score $wave game matches 38..41 run function game:enemy/wave/38
execute if score $volition game matches 1 if score $wave game matches 42..46 run function game:enemy/wave/42
execute if score $volition game matches 1 if score $wave game matches 47..51 run function game:enemy/wave/47
execute if score $volition game matches 1 if score $wave game matches 52..56 run function game:enemy/wave/52
execute if score $volition game matches 1 if score $wave game matches 57..62 run function game:enemy/wave/57
execute if score $volition game matches 1 if score $wave game matches 63..68 run function game:enemy/wave/63
execute if score $volition game matches 1 if score $wave game matches 69..74 run function game:enemy/wave/69
execute if score $volition game matches 1 if score $wave game matches 75..81 run function game:enemy/wave/75
execute if score $volition game matches 1 if score $wave game matches 82..90 run function game:enemy/wave/82
execute if score $volition game matches 1 if score $wave game matches 91.. run function game:enemy/wave/91


execute if score $chosen_modifier_enemy calculate matches 1 run data modify storage game:enemy SpawnType set from storage game:enemy SaveModifierSpawnType

execute if score $chosen_modifier_enemy calculate matches -1 run data modify storage game:enemy SaveModifierSpawnType set from storage game:enemy SpawnType
execute if score $chosen_modifier_enemy calculate matches -1 run scoreboard players set $chosen_modifier_enemy calculate 1


execute if score $volition modifiers matches 1 run function game:enemy/wave/modifier_volition

# execute store result score $rand random if score $wave game matches 3..4 run loot insert 0 1 0 loot game:enemy/wave_3-4
# execute store result score $rand random if score $wave game matches 5 run loot insert 0 1 0 loot game:enemy/wave_5
# execute store result score $rand random if score $wave game matches 6 run loot insert 0 1 0 loot game:enemy/wave_6
# execute store result score $rand random if score $wave game matches 7..8 run loot insert 0 1 0 loot game:enemy/wave_7-8
# execute store result score $rand random if score $wave game matches 9..10 run loot insert 0 1 0 loot game:enemy/wave_9-10
# execute store result score $rand random if score $wave game matches 11..12 run loot insert 0 1 0 loot game:enemy/wave_11-12
# execute store result score $rand random if score $wave game matches 13 run loot insert 0 1 0 loot game:enemy/wave_13
# execute store result score $rand random if score $wave game matches 14 run loot insert 0 1 0 loot game:enemy/wave_14
# execute store result score $rand random if score $wave game matches 15.. run loot insert 0 1 0 loot game:enemy/wave_15-
# function random:reset_chest# 
# /give @p minecraft:player_head{display:{Name:"{\"text\":\"Inuit Zombie\"}"},SkullOwner:{Id:[I;1174021127,1024872041,-1604793158,-418377743],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzEyYmVhYWRlMDBkNzlmODBkYmExMzdmMjg3ZDYzZTBmZDljN2I2ZTI1OTE4YzgzYzU4NDJmNzk3OGRiMWI5NyJ9fX0="}]}}} 1
# data modify storage game:enemy SpawnType set value "dota:phantom"

# volition mobs

execute if entity @s[tag=mob_spawner_spawn] if data storage game:enemy {SpawnType:"dota:mob_spawner"} run data modify storage game:enemy SpawnType set value "dota:zombie"

execute if data storage game:enemy {SpawnType:"dota:plague_zombie"} if entity @e[type=marker,tag=temporary_tag,sort=nearest,limit=1,tag=boss_room_spawnpoint] run data modify storage game:enemy SpawnType set value "dota:zombie"

execute if data storage game:enemy {SpawnType:"dota:plague_zombie"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{display:{color:5798951}}},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1348588827,711999720,-2022459919,-1858757912],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2MDFlNjY0ZTJhZjA3NmI1NDU1MzViN2E2ODljYzc5YjEwODI2YWE2NTc1M2ZiYzZmNjU0MmJjOTRjZjcxIn19fQ=="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.1d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1},{Name:"generic.knockback_resistance",Base:0.9}],Tags:["die_between_games","enemy","plague_zombie","no_knockback","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}


execute if data storage game:enemy {SpawnType:"dota:evoker"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:evoker ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.29d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["die_between_games","enemy","no_knockback","evoker","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:bandit"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {IsBaby:1b,ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2105374},Trim:{material:"minecraft:gold",pattern:"minecraft:sentry"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5855577},Trim:{material:"minecraft:copper",pattern:"minecraft:vex"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;310613047,1800423280,-1867862843,-675781615],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2M4ZGNiZGVlOTgzZDI1NGY5NDQzNjcwZTJmN2JmNDY3OWNkMDk5MjMyYmZlNmVmNjkzYzRlMjRjY2I5YjY2ZCJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.290d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1},{Name:"generic.knockback_resistance",Base:0.0}],Tags:["die_between_games","enemy","bandit","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:ghost"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {Silent:1b,ArmorItems:[{},{},{},{}],Attributes:[{Name:"generic.movement_speed",Base:0.310d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:4},{Name:"generic.knockback_resistance",Base:0.0}],Tags:["die_between_games","enemy","ghost","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000000}]}
execute if data storage game:enemy {SpawnType:"dota:wither_knight"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:dune"},display:{color:15394023},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:iron",pattern:"minecraft:sentry"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:eye"},display:{color:15394023}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-665843218,1529103261,-1242643189,-1808836039],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQyZGIzODM3MDRiMThjNzg3ZTViNzNmMjFhMjZmM2QyYzQxZjllYzc0YWViZTI4ODI0MTM1MGE2NDZmYjVkYSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.255d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:6},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["die_between_games","enemy","no_knockback","wither_knight_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:wither_brute"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Trim:{pattern:raiser,material:amethyst},display:{color:4460629},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{pattern:sentry,material:amethyst}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4460629},Trim:{pattern:raiser,material:amethyst}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-927087325,-1965469740,-1412048941,1565797602],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA3ODk2ZDk0OGM4YTk0NmQ4MWZkN2U1MzQ2MmQ1OTkxMzZkMGU2MTk4ODUwZTEyMjUzNzk3ODAzZDA1MmY1YyJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:9}],Tags:["die_between_games","enemy","wither_powerful_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:1.0,UUID:[I;767,767,767,767]}]}},{}],PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:wither_leaper"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3619384},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:iron_leggings",Count:1b},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;729435567,299450419,-1183452299,-1582852074],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQyNmYyZGZkZjVkZmZjMTZmYzgwODExYTg0MzUyNGRhZjEyYzQ5MzFlYzg1MDMwNzc3NWM2ZDM1YTVmNDZjMSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.35d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:5}],Tags:["die_between_games","enemy","wither_leaper_zombie","leaper_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}

execute if data storage game:enemy {SpawnType:"dota:mob_spawner"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["mob_spawner_part","mob_spawner_block","die_between_games","needs_initialization"],block_state:{Name:"minecraft:spawner"}}
execute if data storage game:enemy {SpawnType:"dota:mob_spawner"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~-0.867 ~ {Duration:10000000,Tags:["mob_spawner_part","mob_spawner","die_between_games","needs_initialization"],Passengers:[{id:"minecraft:magma_cube",Glowing:1b,Silent:1b,Size:1,Tags:["mob_spawner_part","mob_spawner_hitbox","die_between_games","enemy","needs_initialization","volition_name"],CustomNameVisible:0b,PersistenceRequired:0b,ActiveEffects:[{Id:18,ShowParticles:0b,Duration:10000000,Amplifier:100},{Id:14,ShowParticles:0b,Duration:10000000,Amplifier:0}],NoAI:1b,Passengers:[{id:"minecraft:area_effect_cloud",Duration:1000000,CustomName:'[{"text":" "}]',Tags:["mob_spawner_part","mob_spawner","die_between_games","needs_initialization","volition_name","mob_spawner_nameplate"],CustomNameVisible:1b}]}]}

execute if data storage game:enemy {SpawnType:"dota:fire_skeleton"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14316817},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14447648}}},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;674692323,460475624,-1981364369,-1717546587],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJiMjgxM2YzZGM5MzNhMGY3ZTNhYjg4NDgyYWRkZWM5ODk4ZWI1MmE4OTM1ODY2ZDUyYzU2OTRjNTZmZmFmOSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.25d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1}],Tags:["die_between_games","enemy","fire_skeleton","needs_initialization","volition_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:flame",lvl:2}]}},{}],PersistenceRequired:0b,ActiveEffects:[{Id:12,Duration:100000000,Amplifier:1,ShowParticles:0b}],Fire:10000000}
execute if data storage game:enemy {SpawnType:"dota:exploding_zombie"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11489079},Trim:{pattern:sentry,material:netherite}}},{id:"minecraft:tnt",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.28d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:3}],Tags:["die_between_games","enemy","exploding_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:skeleton_knight"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5925457}}},{id:"minecraft:iron_chestplate",Count:1b,tag:{display:{color:9472400}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-199092328,1909082687,-1783338919,-2062730489],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg0MjY5ZjY2MTQwOWFjZmExMGI0YmY2NTc1YTBmNDUyYjA5N2VmODlhMjhhYjUwNjEzMDk4OGE1OTk0OWIyNCJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.335d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:6}],Tags:["die_between_games","enemy","skeleton_knight","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:wind_zombie"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon zombie ~ ~ ~ {IsBaby:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10344168}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7755572},Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1174021127,1024872041,-1604793158,-418377743],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzEyYmVhYWRlMDBkNzlmODBkYmExMzdmMjg3ZDYzZTBmZDljN2I2ZTI1OTE4YzgzYzU4NDJmNzk3OGRiMWI5NyJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.305d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:2}],Tags:["die_between_games","enemy","wind_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}

execute if data storage game:enemy {SpawnType:"dota:rogue"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:pillager ~ ~ ~ {HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}},{}],Attributes:[{Name:"generic.movement_speed",Base:0.285d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:2}],Tags:["die_between_games","enemy","rogue","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:rogue"} as @e[type=pillager,tag=needs_initialization,limit=1] at @s run function game:enemy/volition/rogue/get_element

execute if data storage game:enemy {SpawnType:"dota:lobber"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {Attributes:[{Name:"generic.movement_speed",Base:0.13d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:6}],Tags:["die_between_games","enemy","lobber","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2828842},Trim:{material:"amethyst",pattern:"spire"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4472896},Trim:{material:"emerald",pattern:"spire"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2828842},Trim:{material:"amethyst",pattern:"spire"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2106201984,1604208352,-1745804555,-2118990914],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGJhMGQ3OTAzY2E3Mjc4ZTZhOTQ4MmI1YzIyYzBhNjMyYjg3Y2YxNTgyMGQ0NDg5NTYyMWUyNDEwZDUzM2Q4MyJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:1.0,UUID:[I;767,767,767,767]}]}},{}]}
execute if data storage game:enemy {SpawnType:"dota:lobber"} as @e[type=wither_skeleton,tag=needs_initialization,limit=1,tag=!lobber_setup] at @s run function game:enemy/volition/lobber/get_mob







execute if data storage game:enemy {SpawnType:"dota:mage"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1252173},Trim:{material:"netherite",pattern:"dune"},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2108800},Trim:{material:"gold",pattern:"tide"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Trim:{pattern:snout,material:netherite},display:{color:1252173}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;144532366,-985775378,-1383559491,-1736465655],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODdmZDlkYjBjYThiY2I5NWJmYWI0NmZjM2VlYjYzMTBmNjUyZDRhMjY4ZjQ3ZGIxOWJjYTI3ZjY3NzM5YjM5MiJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.25d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:3}],Tags:["die_between_games","enemy","mage","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}


execute if data storage game:enemy {SpawnType:"dota:keeper"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:false}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12633262},Trim:{material:"netherite",pattern:"ward"},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2026419},Trim:{material:"netherite",pattern:"silence"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Trim:{pattern:silence,material:netherite},display:{color:2026419}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;671343028,-1150533631,-1530809491,1205459769],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWZlYjAxYjg1YTE1OTJlNDBiMjIwMDI1YzI0ZTg4MGZiNGNkY2U4MjcwODI1MjhlMDk2MWUxNzhlODU4NmM2ZSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.2d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1}],Tags:["die_between_games","enemy","keeper","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}

execute if data storage game:enemy {SpawnType:"dota:fallen_arbalist"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {Silent:1b,ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{display:{color:3090483},Trim:{material:"lapis",pattern:"ward"},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2042406},Trim:{material:"iron",pattern:"dune"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{display:{color:3090483},Trim:{material:"lapis",pattern:"coast"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1898654647,-370520581,-1994569282,-710270136],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE0YzI5OTA4YTYyNWUxNWZhZDE4NThlODVlMTRhNDBhY2Y5Zjc5Yjc1NjNkZWVjNDQxMmM0ZmFmMWFhNTZlMyJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.45d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:30}],Tags:["die_between_games","enemy","fallen_arbalist","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,HandItems:[{id:"minecraft:crossbow",Count:1b},{id:"sculk",Count:1b}]}

# SkullOwner:{Id:[I;1898654647,-370520581,-1994569282,-710270136],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE0YzI5OTA4YTYyNWUxNWZhZDE4NThlODVlMTRhNDBhY2Y5Zjc5Yjc1NjNkZWVjNDQxMmM0ZmFmMWFhNTZlMyJ9fX0="}]}}
 # /give @p minecraft:player_head{display:{Name:"{\"text\":\"Dark Mage\"}"},SkullOwner:{Id:[I;144532366,-985775378,-1383559491,-1736465655],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODdmZDlkYjBjYThiY2I5NWJmYWI0NmZjM2VlYjYzMTBmNjUyZDRhMjY4ZjQ3ZGIxOWJjYTI3ZjY3NzM5YjM5MiJ9fX0="}]}}} 1
# summoning the regular mobs
execute if data storage game:enemy {SpawnType:"dota:zombie"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1388575},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.315d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1.5}],Tags:["die_between_games","enemy","base_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:spider"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:cave_spider ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1388575},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:0.75}],Tags:["die_between_games","enemy","cave_spider","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:knight"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-179057810,2055423683,-1976388893,-1719646153],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZiOGQ4NzQ1ZjZmYzdhMGE3NzM1NGNlMWE5ZjMwNDY4MTdmNjZkMmQzYWZkMWJjZGFjNmQyZDEwZjM3OSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.275d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:3},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["die_between_games","enemy","no_knockback","knight_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:brute"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6496802},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6496802}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1395377213,-1410576596,-1117976253,1036890651],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg2NzllMDM0NzY3ZDUxODY2MGQ5NDE2ZGM1ZWFmMzE5ZDY5NzY4MmFjNDBjODg2ZTNjMmJjOGRmYTFkZTFkIn19fQ=="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.267d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:4}],Tags:["die_between_games","enemy","powerful_zombie","needs_initialization","default_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:1.0,UUID:[I;767,767,767,767]}]}},{}],PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:leaper"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3619384},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:iron_leggings",Count:1b},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1417813724,1136152051,-1770191689,1927503283],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjM1NGE0MTcyYTliYTljNDdmYjg1M2FiMjg0ZmRjMGEzNDQzMjYwMTNlNWQ3M2M0YmVjNzgwMGQ4M2Y0ZTM5OSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.375d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1}],Tags:["die_between_games","enemy","leaper_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:skeleton"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9408399},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.25d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1}],Tags:["die_between_games","enemy","base_skeleton","needs_initialization","default_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",Count:1b},{}],PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:witch"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3619384},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6842472}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8126625}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-38755755,120930786,-1237586486,-1917676770],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk1MDJhYjMzYmIyYzhkNmE5MGZmZjg1MDFiY2I5NTg1ZDFjMmVmZTQ0NWExMWUzODA3YjE4NjE4YjBjZGQyYiJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.325d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1}],Tags:["die_between_games","enemy","witch_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:husk"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:husk ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.29d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:5},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["die_between_games","no_knockback","enemy","husk","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}


execute if entity @e[type=marker,tag=no_delay_spawn] at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run tp @e[tag=needs_initialization] ~ ~ ~ facing entity @p[team=game]
tag @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] remove no_delay_spawn


##/give @p minecraft:player_head{display:{Name:"{\"text\":\"Wither Skeleton\"}"},SkullOwner:{Id:[I;729435567,299450419,-1183452299,-1582852074],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQyNmYyZGZkZjVkZmZjMTZmYzgwODExYTg0MzUyNGRhZjEyYzQ5MzFlYzg1MDMwNzc3NWM2ZDM1YTVmNDZjMSJ9fX0="}]}}} 1# execute if score $rand random matches 35.. at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6381921},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6381921}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1244970690,-575387971,-1499071169,1892321511],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzMjU0ZjlhMGQ0M2E4MWJlMzgwY2U2MmM4OWE4NDEzNDE3YzU3OGU4OGIwNTAzMjRhZDk0NzEyYzAifX19"}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.3855d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:4}],Tags:["die_between_games","enemy","scary_zombie","needs_initialization","default_name"],CustomNameVisible:1b}
# # /give @p minecraft:player_head{display:{Name:"{\"text\":\"Skeleton Defender\"}"},SkullOwner:{Id:[I;-199092328,1909082687,-1783338919,-2062730489],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg0MjY5ZjY2MTQwOWFjZmExMGI0YmY2NTc1YTBmNDUyYjA5N2VmODlhMjhhYjUwNjEzMDk4OGE1OTk0OWIyNCJ9fX0="}]}}} 1
##adding counter score
scoreboard players add $enemies_spawned game 1

##Setting health
scoreboard players set @e[type=zombie,tag=base_zombie,tag=needs_initialization] enemy_health 50
scoreboard players set @e[type=zombie,tag=base_zombie,tag=needs_initialization] enemy_loot_table 0

scoreboard players set @e[type=cave_spider,tag=cave_spider,tag=needs_initialization] enemy_health 40
scoreboard players set @e[type=cave_spider,tag=cave_spider,tag=needs_initialization] enemy_loot_table 2

scoreboard players set @e[type=zombie,tag=powerful_zombie,tag=needs_initialization] enemy_health 150
scoreboard players set @e[type=zombie,tag=powerful_zombie,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=zombie,tag=leaper_zombie,tag=needs_initialization] enemy_health 56
scoreboard players set @e[type=zombie,tag=leaper_zombie,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=zombie,tag=leaper_zombie,tag=needs_initialization] at @s run function game:enemy/leaper/get_leap_timer

scoreboard players set @e[type=skeleton,tag=base_skeleton,tag=needs_initialization] enemy_health 25
scoreboard players set @e[type=skeleton,tag=base_skeleton,tag=needs_initialization] enemy_loot_table 0

scoreboard players set @e[type=zombie,tag=knight_zombie,tag=needs_initialization] enemy_health 130
scoreboard players set @e[type=zombie,tag=knight_zombie,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=zombie,tag=witch_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=zombie,tag=witch_zombie,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=zombie,tag=witch_zombie,tag=needs_initialization] at @s run function game:enemy/witch/get_potion_timer
 
scoreboard players set @e[type=husk,tag=husk,tag=needs_initialization] enemy_health 100
scoreboard players set @e[type=husk,tag=husk,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=evoker,tag=evoker,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=evoker,tag=evoker,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=zombie,tag=scary_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=zombie,tag=scary_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=zombie,tag=bandit,tag=needs_initialization] enemy_health 50
scoreboard players set @e[type=zombie,tag=bandit,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=zombie,tag=ghost,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=zombie,tag=ghost,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=skeleton,tag=fire_skeleton,tag=needs_initialization] enemy_health 40
scoreboard players set @e[type=skeleton,tag=fire_skeleton,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=wither_skeleton,tag=wither_knight_zombie,tag=needs_initialization] enemy_health 350
scoreboard players set @e[type=wither_skeleton,tag=wither_knight_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=wither_skeleton,tag=wither_powerful_zombie,tag=needs_initialization] enemy_health 120
scoreboard players set @e[type=wither_skeleton,tag=wither_powerful_zombie,tag=needs_initialization] enemy_loot_table 3


scoreboard players set @e[type=wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] enemy_health 90
scoreboard players set @e[type=wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=wither_skeleton,tag=plague_zombie,tag=needs_initialization] enemy_health 1500
scoreboard players set @e[type=wither_skeleton,tag=plague_zombie,tag=needs_initialization] attack 500
scoreboard players set @e[type=wither_skeleton,tag=plague_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=wither_skeleton,tag=exploding_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=wither_skeleton,tag=exploding_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=zombie,tag=wind_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=zombie,tag=wind_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=wither_skeleton,tag=lobber,tag=needs_initialization] enemy_health 200
scoreboard players set @e[type=wither_skeleton,tag=lobber,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=skeleton,tag=skeleton_knight,tag=needs_initialization] enemy_health 75
scoreboard players set @e[type=skeleton,tag=skeleton_knight,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=skeleton,tag=skeleton_knight,tag=needs_initialization] at @s run function game:enemy/volition/skeleton_knight/player_far

execute if entity @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] run function game:enemy/volition/mob_spawner/spawn

scoreboard players set @e[type=zombie,tag=keeper,tag=needs_initialization] enemy_health 270
scoreboard players set @e[type=zombie,tag=keeper,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=zombie,tag=fallen_arbalist,tag=needs_initialization] enemy_health 500
scoreboard players set @e[type=zombie,tag=fallen_arbalist,tag=needs_initialization] enemy_loot_table 3
execute as @e[type=zombie,tag=fallen_arbalist,tag=needs_initialization] at @s run function game:enemy/volition/fallen_arbalist/spawn


scoreboard players set @e[type=skeleton,tag=mage,tag=needs_initialization] enemy_health 200
scoreboard players set @e[type=skeleton,tag=mage,tag=needs_initialization] enemy_loot_table 3
scoreboard players set @e[type=skeleton,tag=mage,tag=needs_initialization] attack 200


execute if data storage game:enemy {SpawnType:"dota:phantom"} run function game:enemy/volition/phantom/spawn
execute if data storage game:enemy {SpawnType:"dota:phantom"} run function game:enemy/volition/phantom/spawn
execute if data storage game:enemy {SpawnType:"dota:phantom"} run function game:enemy/volition/phantom/spawn
execute if data storage game:enemy {SpawnType:"dota:phantom"} run scoreboard players add $enemies_spawned game 1
execute if data storage game:enemy {SpawnType:"dota:phantom"} run scoreboard players add $enemies_spawned game 1



execute as @e[type=wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] at @s run function game:enemy/leaper/get_leap_timer
##Changing the wave if we're on adventure.
scoreboard players operation $calculate_3 calculate = $wave game
##execute if score $mode settings matches 1.. run scoreboard players set $wave game 8


# if we spawn a lobber and we need to hop on the last one
execute if entity @e[type=wither_skeleton,tag=lobber_setup] as @e[type=#minecraft:enemy,tag=needs_initialization] at @s run function game:enemy/volition/lobber/ride_top

#
execute as @e[type=#minecraft:enemy,tag=needs_initialization] at @s run function game:enemy/initialize

scoreboard players operation $wave game = $calculate_3 calculate

##IF there is a spawn limit
scoreboard players remove @e[type=marker,tag=temporary_tag,sort=nearest,limit=1,scores={spawn_limit=1..}] spawn_limit 1
kill @e[type=marker,tag=temporary_tag,sort=nearest,limit=1,scores={spawn_limit=0}]

##removing temporary tag
tag @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] remove temporary_tag

# removing mob spawner spawn
tag @s remove mob_spawner_spawn

##Recalling function if there are more:
execute if entity @e[type=marker,tag=temporary_tag] run function game:enemy/spawn_enemy
##if entity @a[tag=playing,team=game,dx=31,dy=31,dz=31] 


# RANDOM LIGHTNING STRIKE CHANCE
scoreboard players set $mod random 500
function random:random
execute if score $rand random matches 0 run summon lightning_bolt ~ ~15 ~