##Randomizing the mob
tag @s add temporary_tag

##Setting the "wave" (if entity @s is so that this can be called from a function w/o setting that part.)
execute if score $mode settings matches 1.. if entity @s run scoreboard players operation $wave game = @s wave_id


# setting storage value to be blank just in case
data modify storage game:enemy SpawnType set value ""
execute if score $wave game matches 1..2 run function game:enemy/wave/1-2
execute if score $wave game matches 3..4 run function game:enemy/wave/3-4
execute if score $wave game matches 5 run function game:enemy/wave/5
execute if score $wave game matches 6 run function game:enemy/wave/6
execute if score $wave game matches 7..8 run function game:enemy/wave/7-8
execute if score $wave game matches 9..10 run function game:enemy/wave/9-10
execute if score $wave game matches 11..12 run function game:enemy/wave/11-12
execute if score $wave game matches 13..14 run function game:enemy/wave/13
execute if score $volition game matches 1 if score $wave game matches 15..16 run function game:enemy/wave/15
execute if score $volition game matches 1 if score $wave game matches 17..18 run function game:enemy/wave/17
execute if score $volition game matches 1 if score $wave game matches 19..20 run function game:enemy/wave/19
execute if score $volition game matches 1 if score $wave game matches 21..23 run function game:enemy/wave/21
execute if score $volition game matches 1 if score $wave game matches 24..26 run function game:enemy/wave/24
execute if score $volition game matches 1 if score $wave game matches 27..29 run function game:enemy/wave/27
execute if score $volition game matches 1 if score $wave game matches 30..33 run function game:enemy/wave/30
execute if score $volition game matches 1 if score $wave game matches 34.. run function game:enemy/wave/34
# execute if score $volition game matches 1 if score $wave game matches 15.. run function game:enemy/wave/13

# execute store result score $rand random if score $wave game matches 3..4 run loot insert 0 1 0 loot game:enemy/wave_3-4
# execute store result score $rand random if score $wave game matches 5 run loot insert 0 1 0 loot game:enemy/wave_5
# execute store result score $rand random if score $wave game matches 6 run loot insert 0 1 0 loot game:enemy/wave_6
# execute store result score $rand random if score $wave game matches 7..8 run loot insert 0 1 0 loot game:enemy/wave_7-8
# execute store result score $rand random if score $wave game matches 9..10 run loot insert 0 1 0 loot game:enemy/wave_9-10
# execute store result score $rand random if score $wave game matches 11..12 run loot insert 0 1 0 loot game:enemy/wave_11-12
# execute store result score $rand random if score $wave game matches 13 run loot insert 0 1 0 loot game:enemy/wave_13
# execute store result score $rand random if score $wave game matches 14 run loot insert 0 1 0 loot game:enemy/wave_14
# execute store result score $rand random if score $wave game matches 15.. run loot insert 0 1 0 loot game:enemy/wave_15-
# function random:reset_chest

 # data modify storage game:enemy SpawnType set value "dota:exploding_zombie"

# volition mobs

execute if data storage game:enemy {SpawnType:"dota:plague_zombie"} if entity @e[type=minecraft:marker,tag=temporary_tag,tag=boss_room_spawnpoint,sort=nearest,limit=1] run data modify storage game:enemy SpawnType set value "dota:zombie"

execute if data storage game:enemy {SpawnType:"dota:plague_zombie"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:netherite_boots",components:{"minecraft:dyed_color":{rgb:0},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:iron_leggings",components:{"minecraft:dyed_color":{rgb:5798951}},count:1},{id:"minecraft:netherite_chestplate",count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1348588827,711999720,-2022459919,-1858757912],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2MDFlNjY0ZTJhZjA3NmI1NDU1MzViN2E2ODljYzc5YjEwODI2YWE2NTc1M2ZiYzZmNjU0MmJjOTRjZjcxIn19fQ=="}]}},count:1}],Tags:["die_between_games","enemy","plague_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.1d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.0d}]}


execute if data storage game:enemy {SpawnType:"dota:evoker"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:evoker ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",components:{"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{},{},{id:"minecraft:stone_button",count:1}],Tags:["die_between_games","enemy","evoker","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.29d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.0d},{id:"minecraft:generic.knockback_resistance",base:1.0d}]}
execute if data storage game:enemy {SpawnType:"dota:bandit"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {IsBaby:1b,ArmorItems:[{id:"minecraft:golden_boots",components:{"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:2105374}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:5855577}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;310613047,1800423280,-1867862843,-675781615],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2M4ZGNiZGVlOTgzZDI1NGY5NDQzNjcwZTJmN2JmNDY3OWNkMDk5MjMyYmZlNmVmNjkzYzRlMjRjY2I5YjY2ZCJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","bandit","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.32d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.0d},{id:"minecraft:generic.knockback_resistance",base:0.0d}]}
execute if data storage game:enemy {SpawnType:"dota:ghost"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {Silent:1b,ArmorItems:[{},{},{},{}],Tags:["die_between_games","enemy","ghost","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.31d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:4.0d},{id:"minecraft:generic.knockback_resistance",base:0.0d}],active_effects:[{id:"minecraft:invisibility",duration:1000000000}]}
execute if data storage game:enemy {SpawnType:"dota:wither_knight"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",components:{"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:netherite_leggings",count:1},{id:"minecraft:iron_chestplate",count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-665843218,1529103261,-1242643189,-1808836039],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQyZGIzODM3MDRiMThjNzg3ZTViNzNmMjFhMjZmM2QyYzQxZjllYzc0YWViZTI4ODI0MTM1MGE2NDZmYjVkYSJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","wither_knight_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.255d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:6.0d},{id:"minecraft:generic.knockback_resistance",base:1.0d}]}
execute if data storage game:enemy {SpawnType:"dota:wither_brute"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:4460629},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:netherite_leggings",count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:4460629}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-927087325,-1965469740,-1412048941,1565797602],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA3ODk2ZDk0OGM4YTk0NmQ4MWZkN2U1MzQ2MmQ1OTkxMzZkMGU2MTk4ODUwZTEyMjUzNzk3ODAzZDA1MmY1YyJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","wither_powerful_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:netherite_sword",components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:generic.attack_damage",id:"minecraft:000002ff-0000-02ff-0000-02ff000002ff",amount:1.0d}]}},count:1},{}],PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.3d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:9.0d}]}
execute if data storage game:enemy {SpawnType:"dota:wither_leaper"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:3619384},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:iron_leggings",count:1},{},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;729435567,299450419,-1183452299,-1582852074],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQyNmYyZGZkZjVkZmZjMTZmYzgwODExYTg0MzUyNGRhZjEyYzQ5MzFlYzg1MDMwNzc3NWM2ZDM1YTVmNDZjMSJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","wither_leaper_zombie","leaper_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:5.0d}]}

execute if data storage game:enemy {SpawnType:"dota:mob_spawner"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~-0.867 ~ {Duration:10000000,Tags:["mob_spawner_part","mob_spawner","die_between_games","needs_initialization"],Passengers:[{id:"minecraft:falling_block",Tags:["mob_spawner_part","mob_spawner_block","die_between_games","needs_initialization"],Time:1,NoGravity:1b,BlockState:{Name:"minecraft:spawner"}}]}
execute if data storage game:enemy {SpawnType:"dota:mob_spawner"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~-0.867 ~ {Duration:10000000,Tags:["mob_spawner_part","mob_spawner","die_between_games","needs_initialization"],Passengers:[{id:"minecraft:magma_cube",Size:1,Tags:["mob_spawner_part","mob_spawner_hitbox","die_between_games","enemy","needs_initialization","volition_name"],CustomNameVisible:0b,PersistenceRequired:0b,Passengers:[{id:"minecraft:area_effect_cloud",Duration:1000000,CustomName:'" "',Tags:["mob_spawner_part","mob_spawner","die_between_games","needs_initialization","volition_name","mob_spawner_nameplate"],CustomNameVisible:1b}],active_effects:[{id:"minecraft:weakness",show_particles:0b,duration:10000000,amplifier:100b},{id:"minecraft:invisibility",show_particles:0b,duration:10000000}]}]}

execute if data storage game:enemy {SpawnType:"dota:fire_skeleton"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:14316817},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:14447648}},count:1},{},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;674692323,460475624,-1981364369,-1717546587],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJiMjgxM2YzZGM5MzNhMGY3ZTNhYjg4NDgyYWRkZWM5ODk4ZWI1MmE4OTM1ODY2ZDUyYzU2OTRjNTZmZmFmOSJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","fire_skeleton","needs_initialization","volition_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",components:{"minecraft:enchantments":{levels:{"minecraft:flame":1}}},count:1},{}],PersistenceRequired:0b,Fire:10000000,attributes:[{id:"minecraft:generic.movement_speed",base:0.25d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.0d}],active_effects:[{id:"minecraft:fire_resistance",duration:100000000,amplifier:1b,show_particles:0b}]}

execute if data storage game:enemy {SpawnType:"dota:phantom"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {IsBaby:1b,Silent:1b,Tags:["phantom_part","die_between_games","needs_initialization","enemy","no_damage_indicator"],Passengers:[{id:"minecraft:phantom",Size:0,Tags:["phantom_part","die_between_games","enemy","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:2.0d}]}],active_effects:[{id:"minecraft:invisibility",duration:1000000,show_particles:0b},{id:"minecraft:slow_falling",duration:1000000,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:0.3d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:2.0d}]}


execute if data storage game:enemy {SpawnType:"dota:exploding_zombie"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:netherite_leggings",components:{"minecraft:dyed_color":{rgb:14645530}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:11489079}},count:1},{id:"minecraft:tnt",count:1}],Tags:["die_between_games","enemy","exploding_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.28d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:3.0d}]}

execute if data storage game:enemy {SpawnType:"dota:skeleton_knight"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:5925457}},count:1},{id:"minecraft:iron_chestplate",components:{"minecraft:dyed_color":{rgb:9472400}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-199092328,1909082687,-1783338919,-2062730489],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg0MjY5ZjY2MTQwOWFjZmExMGI0YmY2NTc1YTBmNDUyYjA5N2VmODlhMjhhYjUwNjEzMDk4OGE1OTk0OWIyNCJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","skeleton_knight","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:6.0d}]}

execute if entity @e[type=minecraft:marker,tag=no_delay_spawn] at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run tp @e[tag=needs_initialization] ~ ~ ~ facing entity @p[team=game]
tag @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] remove no_delay_spawn


# summoning the regular mobs
execute if data storage game:enemy {SpawnType:"dota:zombie"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:1388575},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{},{},{id:"minecraft:stone_button",count:1}],Tags:["die_between_games","enemy","base_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.315d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.5d}]}
execute if data storage game:enemy {SpawnType:"dota:spider"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:cave_spider ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:1388575},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{},{},{id:"minecraft:stone_button",count:1}],Tags:["die_between_games","enemy","cave_spider","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.3d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:0.75d}]}
execute if data storage game:enemy {SpawnType:"dota:knight"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",components:{"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:iron_leggings",count:1},{id:"minecraft:iron_chestplate",count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-179057810,2055423683,-1976388893,-1719646153],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZiOGQ4NzQ1ZjZmYzdhMGE3NzM1NGNlMWE5ZjMwNDY4MTdmNjZkMmQzYWZkMWJjZGFjNmQyZDEwZjM3OSJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","knight_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.275d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:3.0d},{id:"minecraft:generic.knockback_resistance",base:1.0d}]}
execute if data storage game:enemy {SpawnType:"dota:brute"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:6496802},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:netherite_leggings",count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:6496802}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1395377213,-1410576596,-1117976253,1036890651],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg2NzllMDM0NzY3ZDUxODY2MGQ5NDE2ZGM1ZWFmMzE5ZDY5NzY4MmFjNDBjODg2ZTNjMmJjOGRmYTFkZTFkIn19fQ=="}]}},count:1}],Tags:["die_between_games","enemy","powerful_zombie","needs_initialization","default_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_sword",components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:generic.attack_damage",id:"minecraft:000002ff-0000-02ff-0000-02ff000002ff",amount:1.0d}]}},count:1},{}],PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.267d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:4.0d}]}
execute if data storage game:enemy {SpawnType:"dota:leaper"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:3619384},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:iron_leggings",count:1},{},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1417813724,1136152051,-1770191689,1927503283],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjM1NGE0MTcyYTliYTljNDdmYjg1M2FiMjg0ZmRjMGEzNDQzMjYwMTNlNWQ3M2M0YmVjNzgwMGQ4M2Y0ZTM5OSJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","leaper_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.375d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.0d}]}
execute if data storage game:enemy {SpawnType:"dota:skeleton"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:9408399},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{},{},{id:"minecraft:stone_button",count:1}],Tags:["die_between_games","enemy","base_skeleton","needs_initialization","default_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",count:1},{}],PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.25d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.0d}]}
execute if data storage game:enemy {SpawnType:"dota:witch"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:3619384},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:6842472}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:8126625}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-38755755,120930786,-1237586486,-1917676770],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk1MDJhYjMzYmIyYzhkNmE5MGZmZjg1MDFiY2I5NTg1ZDFjMmVmZTQ0NWExMWUzODA3YjE4NjE4YjBjZGQyYiJ9fX0="}]}},count:1}],Tags:["die_between_games","enemy","witch_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.325d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:1.0d}]}
execute if data storage game:enemy {SpawnType:"dota:husk"} at @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:husk ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",components:{"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{id:"minecraft:golden_leggings",count:1},{id:"minecraft:iron_chestplate",count:1},{id:"minecraft:stone_button",count:1}],Tags:["die_between_games","enemy","husk","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b,attributes:[{id:"minecraft:generic.movement_speed",base:0.29d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:5.0d},{id:"minecraft:generic.knockback_resistance",base:1.0d}]}





##/give @p minecraft:player_head{display:{Name:"{\"text\":\"Wither Skeleton\"}"},SkullOwner:{Id:[I;729435567,299450419,-1183452299,-1582852074],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQyNmYyZGZkZjVkZmZjMTZmYzgwODExYTg0MzUyNGRhZjEyYzQ5MzFlYzg1MDMwNzc3NWM2ZDM1YTVmNDZjMSJ9fX0="}]}}} 1# execute if score $rand random matches 35.. at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6381921},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6381921}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1244970690,-575387971,-1499071169,1892321511],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzMjU0ZjlhMGQ0M2E4MWJlMzgwY2U2MmM4OWE4NDEzNDE3YzU3OGU4OGIwNTAzMjRhZDk0NzEyYzAifX19"}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.3855d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:4}],Tags:["die_between_games","enemy","scary_zombie","needs_initialization","default_name"],CustomNameVisible:1b}
# # /give @p minecraft:player_head{display:{Name:"{\"text\":\"Skeleton Defender\"}"},SkullOwner:{Id:[I;-199092328,1909082687,-1783338919,-2062730489],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg0MjY5ZjY2MTQwOWFjZmExMGI0YmY2NTc1YTBmNDUyYjA5N2VmODlhMjhhYjUwNjEzMDk4OGE1OTk0OWIyNCJ9fX0="}]}}} 1
##adding counter score
scoreboard players add $enemies_spawned game 1

##Setting health
scoreboard players set @e[type=minecraft:zombie,tag=base_zombie,tag=needs_initialization] enemy_health 50
scoreboard players set @e[type=minecraft:zombie,tag=base_zombie,tag=needs_initialization] enemy_loot_table 0

scoreboard players set @e[type=minecraft:cave_spider,tag=cave_spider,tag=needs_initialization] enemy_health 40
scoreboard players set @e[type=minecraft:cave_spider,tag=cave_spider,tag=needs_initialization] enemy_loot_table 2

scoreboard players set @e[type=minecraft:zombie,tag=powerful_zombie,tag=needs_initialization] enemy_health 85
scoreboard players set @e[type=minecraft:zombie,tag=powerful_zombie,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=minecraft:zombie,tag=leaper_zombie,tag=needs_initialization] enemy_health 56
scoreboard players set @e[type=minecraft:zombie,tag=leaper_zombie,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=minecraft:zombie,tag=leaper_zombie,tag=needs_initialization] at @s run function game:enemy/leaper/get_leap_timer

scoreboard players set @e[type=minecraft:skeleton,tag=base_skeleton,tag=needs_initialization] enemy_health 25
scoreboard players set @e[type=minecraft:skeleton,tag=base_skeleton,tag=needs_initialization] enemy_loot_table 0

scoreboard players set @e[type=minecraft:zombie,tag=knight_zombie,tag=needs_initialization] enemy_health 75
scoreboard players set @e[type=minecraft:zombie,tag=knight_zombie,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=minecraft:zombie,tag=witch_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=minecraft:zombie,tag=witch_zombie,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=minecraft:zombie,tag=witch_zombie,tag=needs_initialization] at @s run function game:enemy/witch/get_potion_timer

scoreboard players set @e[type=minecraft:husk,tag=husk,tag=needs_initialization] enemy_health 100
scoreboard players set @e[type=minecraft:husk,tag=husk,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=minecraft:evoker,tag=evoker,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=minecraft:evoker,tag=evoker,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:zombie,tag=scary_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=minecraft:zombie,tag=scary_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:zombie,tag=bandit,tag=needs_initialization] enemy_health 50
scoreboard players set @e[type=minecraft:zombie,tag=bandit,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:zombie,tag=ghost,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=minecraft:zombie,tag=ghost,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:skeleton,tag=fire_skeleton,tag=needs_initialization] enemy_health 40
scoreboard players set @e[type=minecraft:skeleton,tag=fire_skeleton,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:wither_skeleton,tag=wither_knight_zombie,tag=needs_initialization] enemy_health 350
scoreboard players set @e[type=minecraft:wither_skeleton,tag=wither_knight_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:wither_skeleton,tag=wither_powerful_zombie,tag=needs_initialization] enemy_health 120
scoreboard players set @e[type=minecraft:wither_skeleton,tag=wither_powerful_zombie,tag=needs_initialization] enemy_loot_table 3


scoreboard players set @e[type=minecraft:wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] enemy_health 90
scoreboard players set @e[type=minecraft:wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:wither_skeleton,tag=plague_zombie,tag=needs_initialization] enemy_health 900
scoreboard players set @e[type=minecraft:wither_skeleton,tag=plague_zombie,tag=needs_initialization] attack 500
scoreboard players set @e[type=minecraft:wither_skeleton,tag=plague_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:wither_skeleton,tag=exploding_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=minecraft:wither_skeleton,tag=exploding_zombie,tag=needs_initialization] enemy_loot_table 3

scoreboard players set @e[type=minecraft:skeleton,tag=skeleton_knight,tag=needs_initialization] enemy_health 75
scoreboard players set @e[type=minecraft:skeleton,tag=skeleton_knight,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=minecraft:skeleton,tag=skeleton_knight,tag=needs_initialization] at @s run function game:enemy/volition/skeleton_knight/player_far

execute if entity @e[type=minecraft:magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] run function game:enemy/volition/mob_spawner/spawn

execute if entity @e[type=minecraft:phantom,tag=phantom_part,tag=needs_initialization] run function game:enemy/volition/phantom/spawn

execute as @e[type=minecraft:wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] at @s run function game:enemy/leaper/get_leap_timer
##Changing the wave if we're on adventure.
scoreboard players operation $calculate_3 calculate = $wave game
##execute if score $mode settings matches 1.. run scoreboard players set $wave game 8

execute as @e[type=#minecraft:enemy,tag=needs_initialization] at @s run function game:enemy/initialize

scoreboard players operation $wave game = $calculate_3 calculate

##IF there is a spawn limit
scoreboard players remove @e[type=minecraft:marker,tag=temporary_tag,scores={spawn_limit=1..},sort=nearest,limit=1] spawn_limit 1
kill @e[type=minecraft:marker,tag=temporary_tag,scores={spawn_limit=0},sort=nearest,limit=1]

##removing temporary tag
tag @e[type=minecraft:marker,tag=temporary_tag,sort=nearest,limit=1] remove temporary_tag

##

##Recalling function if there are more:
execute if entity @e[type=minecraft:marker,tag=temporary_tag] run function game:enemy/spawn_enemy
##if entity @a[tag=playing,team=game,dx=31,dy=31,dz=31] 



return 1