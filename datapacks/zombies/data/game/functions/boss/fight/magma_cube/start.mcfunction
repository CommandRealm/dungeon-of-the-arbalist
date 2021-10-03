##Start for magma cube.
summon magma_cube 2000.0 68 0.0 {Rotation:[90.0f,0.0f],Tags:["boss","enemy"],PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.knockback_resistance",Base:1.0},{Name:"generic.movement_speed",Base:1.0}],Size:4}
particle flame 2000.0 68 0.0 0 0 0 1 100
playsound minecraft:block.lava.extinguish master @a 2000.0 68 0.0
effect give @e[type=magma_cube,tag=boss] slowness 5 1 true