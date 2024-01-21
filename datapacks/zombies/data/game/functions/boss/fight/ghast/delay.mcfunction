##Called when the delay is going so we can make the intro cutscene
# Witch appears in front of the hut, teleport to the middle of the arena, launch a fireball up and replace structure voids with fire, then do a bunch of particles and summon the ghast
# can have the witch jump in, a bunch of particles sounds and fireballs come out for a bit, replace the structure voids with fire, and have a ghast come out the middle

execute if score $delay boss matches 60 run setblock 2005 65 -9 minecraft:frosted_ice
execute if score $delay boss matches 60 run playsound minecraft:block.glass.break master @a 2005 65 -9 1 1.75

execute if score $delay boss matches 55 run setblock 2005 65 -9 minecraft:frosted_ice[age=1]
execute if score $delay boss matches 55 run playsound minecraft:block.glass.break master @a 2005 65 -9 1 1.75

execute if score $delay boss matches 50 run setblock 2005 65 -9 minecraft:frosted_ice[age=2]
execute if score $delay boss matches 50 run playsound minecraft:block.glass.break master @a 2005 65 -9 1 1.75

execute if score $delay boss matches 45 run setblock 2005 65 -9 minecraft:frosted_ice[age=3]
execute if score $delay boss matches 45 run playsound minecraft:block.glass.break master @a 2005 65 -9 1 1.75

execute if score $delay boss matches 40 run setblock 2005 65 -9 air destroy

execute if score $delay boss matches 30 run setblock 2005 64 -9 minecraft:frosted_ice
execute if score $delay boss matches 30 run setblock 2005 66 -9 minecraft:frosted_ice
execute if score $delay boss matches 30 run playsound minecraft:block.glass.break master @a 2005 64 -9 1 1.75

execute if score $delay boss matches 25 run setblock 2005 64 -9 minecraft:frosted_ice[age=1]
execute if score $delay boss matches 25 run setblock 2005 66 -9 minecraft:frosted_ice[age=1]
execute if score $delay boss matches 25 run playsound minecraft:block.glass.break master @a 2005 64 -9 1 1.75

execute if score $delay boss matches 20 run setblock 2005 64 -9 minecraft:frosted_ice[age=2]
execute if score $delay boss matches 20 run setblock 2005 66 -9 minecraft:frosted_ice[age=2]
execute if score $delay boss matches 20 run playsound minecraft:block.glass.break master @a 2005 64 -9 1 1.75

execute if score $delay boss matches 15 run setblock 2005 64 -9 minecraft:frosted_ice[age=3]
execute if score $delay boss matches 15 run setblock 2005 66 -9 minecraft:frosted_ice[age=3]
execute if score $delay boss matches 15 run playsound minecraft:block.glass.break master @a 2005 64 -9 1 1.75

execute if score $delay boss matches 10 run setblock 2005 64 -9 air destroy
execute if score $delay boss matches 10 run setblock 2005 66 -9 air destroy