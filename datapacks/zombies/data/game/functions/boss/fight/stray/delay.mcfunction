##Called when the delay is going so we can make the ice have a cracking animation.

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