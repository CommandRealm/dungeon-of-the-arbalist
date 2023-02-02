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
execute if score $volition game matches 0 if score $wave game matches 15.. run function game:enemy/wave/13
# execute if score $volition game matches 1 if score $wave game matches 15.. run function game:enemy/wave/13

execute store result score $rand random if score $wave game matches 3..4 run loot insert 0 1 0 loot game:enemy/wave_3-4
execute store result score $rand random if score $wave game matches 5 run loot insert 0 1 0 loot game:enemy/wave_5
execute store result score $rand random if score $wave game matches 6 run loot insert 0 1 0 loot game:enemy/wave_6
execute store result score $rand random if score $wave game matches 7..8 run loot insert 0 1 0 loot game:enemy/wave_7-8
execute store result score $rand random if score $wave game matches 9..10 run loot insert 0 1 0 loot game:enemy/wave_9-10
execute store result score $rand random if score $wave game matches 11..12 run loot insert 0 1 0 loot game:enemy/wave_11-12
execute store result score $rand random if score $wave game matches 13 run loot insert 0 1 0 loot game:enemy/wave_13
execute store result score $rand random if score $wave game matches 14 run loot insert 0 1 0 loot game:enemy/wave_14
execute store result score $rand random if score $wave game matches 15.. run loot insert 0 1 0 loot game:enemy/wave_15-
function random:reset_chest

#data modify storage game:enemy SpawnType set value "dota:mob_spawner"
# summoning the dudes
execute if data storage game:enemy {SpawnType:"dota:zombie"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1388575},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.315d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1.5}],Tags:["die_between_games","enemy","base_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:spider"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:cave_spider ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1388575},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:0.75}],Tags:["die_between_games","enemy","cave_spider","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:knight"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-179057810,2055423683,-1976388893,-1719646153],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZiOGQ4NzQ1ZjZmYzdhMGE3NzM1NGNlMWE5ZjMwNDY4MTdmNjZkMmQzYWZkMWJjZGFjNmQyZDEwZjM3OSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.275d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:3},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["die_between_games","enemy","knight_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:brute"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6496802},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6496802}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1395377213,-1410576596,-1117976253,1036890651],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg2NzllMDM0NzY3ZDUxODY2MGQ5NDE2ZGM1ZWFmMzE5ZDY5NzY4MmFjNDBjODg2ZTNjMmJjOGRmYTFkZTFkIn19fQ=="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.267d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:4}],Tags:["die_between_games","enemy","powerful_zombie","needs_initialization","default_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:1.0,UUID:[I;767,767,767,767]}]}},{}],PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:leaper"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3619384},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:iron_leggings",Count:1b},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1417813724,1136152051,-1770191689,1927503283],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjM1NGE0MTcyYTliYTljNDdmYjg1M2FiMjg0ZmRjMGEzNDQzMjYwMTNlNWQ3M2M0YmVjNzgwMGQ4M2Y0ZTM5OSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.375d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1}],Tags:["die_between_games","enemy","leaper_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:skeleton"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9408399},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.25d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1}],Tags:["die_between_games","enemy","base_skeleton","needs_initialization","default_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",Count:1b},{}],PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:witch"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3619384},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6842472}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8126625}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-38755755,120930786,-1237586486,-1917676770],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk1MDJhYjMzYmIyYzhkNmE5MGZmZjg1MDFiY2I5NTg1ZDFjMmVmZTQ0NWExMWUzODA3YjE4NjE4YjBjZGQyYiJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.325d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1}],Tags:["die_between_games","enemy","witch_zombie","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:husk"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:husk ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.29d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:5},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["die_between_games","enemy","husk","needs_initialization","default_name"],CustomNameVisible:1b,PersistenceRequired:0b}


# volition mobs
execute if data storage game:enemy {SpawnType:"dota:evoker"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:evoker ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.29d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["die_between_games","enemy","evoker","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:bandit"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {IsBaby:1b,ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2105374}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5855577}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;310613047,1800423280,-1867862843,-675781615],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2M4ZGNiZGVlOTgzZDI1NGY5NDQzNjcwZTJmN2JmNDY3OWNkMDk5MjMyYmZlNmVmNjkzYzRlMjRjY2I5YjY2ZCJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.320d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:1},{Name:"generic.knockback_resistance",Base:0.0}],Tags:["die_between_games","enemy","bandit","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:ghost"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {Silent:1b,ArmorItems:[{},{},{},{}],Attributes:[{Name:"generic.movement_speed",Base:0.310d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:4},{Name:"generic.knockback_resistance",Base:0.0}],Tags:["die_between_games","enemy","ghost","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000000}]}
execute if data storage game:enemy {SpawnType:"dota:wither_knight"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-665843218,1529103261,-1242643189,-1808836039],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQyZGIzODM3MDRiMThjNzg3ZTViNzNmMjFhMjZmM2QyYzQxZjllYzc0YWViZTI4ODI0MTM1MGE2NDZmYjVkYSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.295d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:6},{Name:"generic.knockback_resistance",Base:1.0}],Tags:["die_between_games","enemy","wither_knight_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:wither_brute"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4460629},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4460629}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-927087325,-1965469740,-1412048941,1565797602],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA3ODk2ZDk0OGM4YTk0NmQ4MWZkN2U1MzQ2MmQ1OTkxMzZkMGU2MTk4ODUwZTEyMjUzNzk3ODAzZDA1MmY1YyJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:9}],Tags:["die_between_games","enemy","wither_powerful_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:1.0,UUID:[I;767,767,767,767]}]}},{}],PersistenceRequired:0b}
execute if data storage game:enemy {SpawnType:"dota:wither_leaper"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:wither_skeleton ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3619384},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:iron_leggings",Count:1b},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;729435567,299450419,-1183452299,-1582852074],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQyNmYyZGZkZjVkZmZjMTZmYzgwODExYTg0MzUyNGRhZjEyYzQ5MzFlYzg1MDMwNzc3NWM2ZDM1YTVmNDZjMSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.35d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:5}],Tags:["die_between_games","enemy","wither_leaper_zombie","leaper_zombie","needs_initialization","volition_name"],CustomNameVisible:1b,PersistenceRequired:0b}

execute if data storage game:enemy {SpawnType:"dota:mob_spawner"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10000000,Tags:["mob_spawner_part","mob_spawner","die_between_games","needs_initialization"],Passengers:[{id:"minecraft:falling_block",Tags:["mob_spawner_part","mob_spawner_block","die_between_games","needs_initialization"],Time:1,NoGravity:1b,BlockState:{Name:"minecraft:spawner"}}]}
execute if data storage game:enemy {SpawnType:"dota:mob_spawner"} at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10000000,Tags:["mob_spawner_part","mob_spawner","die_between_games","needs_initialization"],Passengers:[{id:"minecraft:magma_cube",Size:1,Tags:["mob_spawner_part","mob_spawner_hitbox","die_between_games","enemy","needs_initialization","volition_name"],CustomNameVisible:0b,PersistenceRequired:0b,ActiveEffects:[{Id:18,ShowParticles:0b,Duration:10000000,Amplifier:100},{Id:14,ShowParticles:0b,Duration:10000000,Amplifier:0}],Passengers:[{id:"minecraft:area_effect_cloud",Duration:1000000,CustomName:'[{"text":" "}]',Tags:["volition_name","needs_initalization","mob_spawner_part","mob_spawner_nameplate","die_between_games"],CustomNameVisible:1b}]}]}


execute if entity @e[type=marker,tag=no_delay_spawn] at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run tp @e[tag=needs_initialization] ~ ~ ~ facing entity @p[team=game]
tag @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] remove no_delay_spawn



##/give @p minecraft:player_head{display:{Name:"{\"text\":\"Wither Skeleton\"}"},SkullOwner:{Id:[I;729435567,299450419,-1183452299,-1582852074],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQyNmYyZGZkZjVkZmZjMTZmYzgwODExYTg0MzUyNGRhZjEyYzQ5MzFlYzg1MDMwNzc3NWM2ZDM1YTVmNDZjMSJ9fX0="}]}}} 1# execute if score $rand random matches 35.. at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6381921},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6381921}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1244970690,-575387971,-1499071169,1892321511],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzMjU0ZjlhMGQ0M2E4MWJlMzgwY2U2MmM4OWE4NDEzNDE3YzU3OGU4OGIwNTAzMjRhZDk0NzEyYzAifX19"}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.3855d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:4}],Tags:["die_between_games","enemy","scary_zombie","needs_initialization","default_name"],CustomNameVisible:1b}
# /give @p minecraft:player_head{display:{Name:"{\"text\":\"Wither Skeleton\"}"},SkullOwner:{Id:[I;729435567,299450419,-1183452299,-1582852074],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQyNmYyZGZkZjVkZmZjMTZmYzgwODExYTg0MzUyNGRhZjEyYzQ5MzFlYzg1MDMwNzc3NWM2ZDM1YTVmNDZjMSJ9fX0="}]}}} 1

##adding counter score
scoreboard players add $enemies_spawned game 1

##Setting health
scoreboard players set @e[type=zombie,tag=base_zombie,tag=needs_initialization] enemy_health 50
scoreboard players set @e[type=zombie,tag=base_zombie,tag=needs_initialization] enemy_loot_table 0

scoreboard players set @e[type=cave_spider,tag=cave_spider,tag=needs_initialization] enemy_health 40
scoreboard players set @e[type=cave_spider,tag=cave_spider,tag=needs_initialization] enemy_loot_table 2

scoreboard players set @e[type=zombie,tag=powerful_zombie,tag=needs_initialization] enemy_health 85
scoreboard players set @e[type=zombie,tag=powerful_zombie,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=zombie,tag=leaper_zombie,tag=needs_initialization] enemy_health 56
scoreboard players set @e[type=zombie,tag=leaper_zombie,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=zombie,tag=leaper_zombie,tag=needs_initialization] at @s run function game:enemy/leaper/get_leap_timer

scoreboard players set @e[type=skeleton,tag=base_skeleton,tag=needs_initialization] enemy_health 25
scoreboard players set @e[type=skeleton,tag=base_skeleton,tag=needs_initialization] enemy_loot_table 0

scoreboard players set @e[type=zombie,tag=knight_zombie,tag=needs_initialization] enemy_health 75
scoreboard players set @e[type=zombie,tag=knight_zombie,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=zombie,tag=witch_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=zombie,tag=witch_zombie,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=zombie,tag=witch_zombie,tag=needs_initialization] at @s run function game:enemy/witch/get_potion_timer

scoreboard players set @e[type=husk,tag=husk,tag=needs_initialization] enemy_health 100
scoreboard players set @e[type=husk,tag=husk,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=evoker,tag=evoker,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=evoker,tag=evoker,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=zombie,tag=scary_zombie,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=zombie,tag=scary_zombie,tag=needs_initialization] enemy_loot_table 0

scoreboard players set @e[type=zombie,tag=bandit,tag=needs_initialization] enemy_health 50
scoreboard players set @e[type=zombie,tag=bandit,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=zombie,tag=ghost,tag=needs_initialization] enemy_health 70
scoreboard players set @e[type=zombie,tag=ghost,tag=needs_initialization] enemy_loot_table 1



scoreboard players set @e[type=wither_skeleton,tag=wither_knight_zombie,tag=needs_initialization] enemy_health 175
scoreboard players set @e[type=wither_skeleton,tag=wither_knight_zombie,tag=needs_initialization] enemy_loot_table 1

scoreboard players set @e[type=wither_skeleton,tag=wither_powerful_zombie,tag=needs_initialization] enemy_health 120
scoreboard players set @e[type=wither_skeleton,tag=wither_powerful_zombie,tag=needs_initialization] enemy_loot_table 1


scoreboard players set @e[type=wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] enemy_health 90
scoreboard players set @e[type=wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] enemy_loot_table 0

execute if entity @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] run function game:enemy/volition/mob_spawner/spawn

execute as @e[type=wither_skeleton,tag=wither_leaper_zombie,tag=needs_initialization] at @s run function game:enemy/leaper/get_leap_timer
##Changing the wave if we're on adventure.
scoreboard players operation $calculate_3 calculate = $wave game
##execute if score $mode settings matches 1.. run scoreboard players set $wave game 8

execute as @e[tag=needs_initialization] at @s run function game:enemy/initialize

scoreboard players operation $wave game = $calculate_3 calculate

##IF there is a spawn limit
scoreboard players remove @e[type=marker,tag=temporary_tag,sort=nearest,limit=1,scores={spawn_limit=1..}] spawn_limit 1
kill @e[type=marker,tag=temporary_tag,sort=nearest,limit=1,scores={spawn_limit=0}]

##removing temporary tag
tag @e[type=marker,tag=temporary_tag,sort=nearest,limit=1] remove temporary_tag

##

##Recalling function if there are more:
execute if entity @e[type=marker,tag=temporary_tag] run function game:enemy/spawn_enemy
##if entity @a[tag=playing,team=game,dx=31,dy=31,dz=31] 


