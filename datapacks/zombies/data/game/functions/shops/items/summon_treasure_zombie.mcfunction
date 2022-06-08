##Called to summon the treasure zombie.
summon skeleton ~ ~ ~ {PersistenceRequired:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7171437}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5528775}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4104120}}},{id:"minecraft:zombie_head",Count:1b}],Tags:["die_between_games","treasure_zombie","temporary_tag"],ActiveEffects:[{Id:11,Duration:1000000000,Amplifier:127b,ShowParticles:0b}],HandItems:[{},{}],Silent:1b,Attributes:[{Name:"generic.follow_range",Base:0.0},{Name:"generic.attack_damage",Base:0.0}],CustomNameVisible:1b,CustomName:'[{"text":""}]',NoAI:1b}


scoreboard players set @e[type=skeleton,tag=temporary_tag] enemy_health 100


execute as @e[type=skeleton,tag=temporary_tag,limit=1] at @s run loot spawn 0 0 0 loot game:name/treasure_zombie

##Getting our score
execute as @e[type=skeleton,tag=temporary_tag,limit=1] at @s run data modify entity @s CustomName set from entity @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}] Item.tag.display.Name


##Killing the emerald
kill @e[type=item,x=0,y=0,z=0,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:emerald"}}]


##removing temporary tag
tag @e[type=skeleton] remove temporary_tag

##sound, particles
playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1 1.33
particle witch ~ ~1 ~ 0.25 0.5 0.25 0.15 50