##Called to begin the transform.
tag @e[tag=boss] remove boss
tag @e[tag=forest_essence_controlled] remove forest_essence_controlled

##Summoning the entity.
execute at @e[type=minecraft:marker,tag=boss_room_spawnpoint,sort=random,limit=1] run summon minecraft:zombie ~ ~ ~ {Silent:1b,Tags:["boss","enemy","die_between_games","actual_boss"],PersistenceRequired:1b,attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.knockback_resistance",base:1.0d},{id:"minecraft:generic.movement_speed",base:0.275d},{id:"minecraft:generic.attack_damage",base:1.5d}],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:100000000,show_particles:0b}]}
effect give @e[type=minecraft:zombie,tag=boss] minecraft:resistance 1000000 126 true
team join enemy @e[type=minecraft:zombie,tag=boss]
##Attack
scoreboard players set $attack boss 0
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 60
return 1