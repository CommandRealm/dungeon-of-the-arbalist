##Called to begin the transform.
tag @e[tag=boss] remove boss
tag @e[tag=forest_essence_controlled] remove forest_essence_controlled

##Summoning the entity.
execute at @e[type=marker,tag=boss_room_spawnpoint,sort=random,limit=1] run summon zombie ~ ~ ~ {Silent:1b,Tags:["boss","enemy","die_between_games","actual_boss"],PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.knockback_resistance",Base:1.0},{Name:"generic.movement_speed",Base:0.275},{Name:"generic.attack_damage",Base:1.5}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100000000,ShowParticles:false}]}
effect give @e[type=zombie,tag=boss] resistance 1000000 126 true
team join enemy @e[tag=boss,type=zombie]
##Attack
scoreboard players set $attack boss 0
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 60