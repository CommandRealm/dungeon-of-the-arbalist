##called to summon training dummies



execute unless entity @e[type=skeleton,distance=..2,x=7,y=82,z=-10] run summon skeleton 7 82 -10 {ActiveEffects:[{Id:18b,Duration:1000000,Amplifier:100b,ShowParticles:false}],Silent:1b,Rotation:[0f,0f],Invulnerable:0b,Tags:["enemy","tutorial_enemy","needs_initialization","tutorial_dummy","default_name"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10913929}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;67052722,2019248191,-1414515712,498644137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5Mjc5ODVhYTM1NjA5MWZmODY1OTYwOGNiMGFkNjZkNDA1MGUzYmIwODMyYjRmODFiZTEzYjgzNzlhMDkwNSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.0},{Name:"generic.attack_damage",Base:0.0}],CustomNameVisible:1b}
execute unless entity @e[type=skeleton,distance=..2,x=2,y=82,z=-10] run summon skeleton 2 82 -10 {ActiveEffects:[{Id:18b,Duration:1000000,Amplifier:100b,ShowParticles:false}],Silent:1b,Rotation:[0f,0f],Invulnerable:0b,Tags:["enemy","tutorial_enemy","needs_initialization","tutorial_dummy","default_name"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10913929}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;67052722,2019248191,-1414515712,498644137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5Mjc5ODVhYTM1NjA5MWZmODY1OTYwOGNiMGFkNjZkNDA1MGUzYmIwODMyYjRmODFiZTEzYjgzNzlhMDkwNSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.0},{Name:"generic.attack_damage",Base:0.0}],CustomNameVisible:1b}
execute unless entity @e[type=skeleton,distance=..2,x=4,y=82,z=-12] run summon skeleton 4 82 -12 {ActiveEffects:[{Id:18b,Duration:1000000,Amplifier:100b,ShowParticles:false}],Silent:1b,Rotation:[0f,0f],Invulnerable:0b,Tags:["enemy","tutorial_enemy","needs_initialization","tutorial_dummy","default_name"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10913929}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;67052722,2019248191,-1414515712,498644137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5Mjc5ODVhYTM1NjA5MWZmODY1OTYwOGNiMGFkNjZkNDA1MGUzYmIwODMyYjRmODFiZTEzYjgzNzlhMDkwNSJ9fX0="}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.0},{Name:"generic.attack_damage",Base:0.0}],CustomNameVisible:1b}
scoreboard players set @e[type=skeleton,tag=enemy,tag=needs_initialization] enemy_health 50
scoreboard players set @e[type=skeleton,tag=enemy,tag=needs_initialization] enemy_loot_table 0
execute as @e[type=skeleton,tag=needs_initialization] at @s run function game:enemy/initialize