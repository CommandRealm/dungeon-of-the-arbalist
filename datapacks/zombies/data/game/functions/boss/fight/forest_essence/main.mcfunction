##Called during phase 2 of this fight.


##Particles
execute at @e[type=zombie,tag=boss] run particle sneeze ~ ~1 ~ 0.33 0.33 0.33 0.15 1 force @a
execute at @e[type=zombie,tag=boss] run particle happy_villager ~ ~1 ~ 0.0 0.5 0.0 0 5 force @a
##Damage
execute at @e[type=zombie,tag=boss,nbt={HurtTime:9s}] run function game:boss/fight/forest_essence/damage