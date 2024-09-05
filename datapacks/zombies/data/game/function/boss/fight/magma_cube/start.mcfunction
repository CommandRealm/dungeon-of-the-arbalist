##Start for magma cube.
summon minecraft:magma_cube 2000.0 68 0.0 {Rotation:[90.0f,0.0f],Tags:["boss","enemy"],PersistenceRequired:1b,Size:4,attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.knockback_resistance",base:1.0d},{id:"minecraft:generic.movement_speed",base:1.0d}]}
particle minecraft:flame 2000.0 68 0.0 0 0 0 1 100
playsound minecraft:block.lava.extinguish master @a 2000.0 68 0.0
effect give @e[type=minecraft:magma_cube,tag=boss] minecraft:slowness 5 1 true
return 1