##Start for stone monster.

summon minecraft:wither_skeleton 4984 84.5 75 {Tags:["die_between_games","enemy","boss"],Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:3158064}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:6842472}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:0}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;843221916,29705375,-1861374816,442116303],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI1YzkyZDc1YmI3MTAzYmEwNWYyZTJlZWU5NjJhNTc4NWUwNjljN2Q4ZGRkNTI2ZTE5MmMxMjdlZmI3MzNjYyJ9fX0="}]}},count:1}],Silent:1b,Rotation:[180.0f,0.0f],NoAI:1b,attributes:[{id:"minecraft:generic.knockback_resistance",base:1.0d},{id:"minecraft:generic.attack_damage",base:5.0d},{id:"minecraft:generic.movement_speed",base:0.3d}]}


##Crossbow purchasable
function game:boss/fight/stone_monster/crossbow/create_marker

##resetting crossbow score
scoreboard players reset $crossbow boss

##Platform damage reset
scoreboard players reset $platform_damage boss

##spectral arrow drop
scoreboard players set $spectral_arrow boss 0
return 1