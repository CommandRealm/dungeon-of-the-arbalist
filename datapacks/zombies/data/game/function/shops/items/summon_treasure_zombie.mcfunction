##Called to summon the treasure zombie.
summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:7171437}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:5528775}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:4104120}},count:1},{id:"minecraft:zombie_head",count:1}],Tags:["die_between_games","treasure_zombie","temporary_tag"],HandItems:[{},{}],Silent:1b,CustomNameVisible:1b,CustomName:'""',NoAI:1b,active_effects:[{id:"minecraft:resistance",duration:1000000000,amplifier:127b,show_particles:0b}],attributes:[{id:"minecraft:generic.follow_range",base:0.0d},{id:"minecraft:generic.attack_damage",base:0.0d}]}


scoreboard players set @e[type=minecraft:skeleton,tag=temporary_tag] enemy_health 100


execute as @e[type=minecraft:skeleton,tag=temporary_tag,limit=1] at @s run loot spawn 0 0 0 loot game:name/treasure_zombie

##Getting our score
execute as @e[type=minecraft:skeleton,tag=temporary_tag,limit=1] at @s run data modify entity @s CustomName set from entity @e[type=minecraft:item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}] Item.components."minecraft:custom_name"


##Killing the emerald
kill @e[type=minecraft:item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}]


##removing temporary tag
tag @e[type=minecraft:skeleton] remove temporary_tag

##sound, particles
playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1 1.33
particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0.15 50
return 1