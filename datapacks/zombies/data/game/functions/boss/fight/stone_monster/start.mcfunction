##Start for stone monster.

summon wither_skeleton 4984 84.5 75 {Attributes:[{Name:"generic.knockback_resistance",Base:1.0},{Name:"generic.attack_damage",Base:5.0},{Name:"generic.movement_speed",Base:0.3}],Tags:["die_between_games","enemy","boss"],Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3158064}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6842472}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;843221916,29705375,-1861374816,442116303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI1YzkyZDc1YmI3MTAzYmEwNWYyZTJlZWU5NjJhNTc4NWUwNjljN2Q4ZGRkNTI2ZTE5MmMxMjdlZmI3MzNjYyJ9fX0="}]}}}}],Silent:1b,Rotation:[180f,0f],NoAI:1b}


##Crossbow purchasable
function game:boss/fight/stone_monster/crossbow/create_marker

##resetting crossbow score
scoreboard players reset $crossbow boss

##Platform damage reset
scoreboard players reset $platform_damage boss

##spectral arrow drop
scoreboard players set $spectral_arrow boss 0