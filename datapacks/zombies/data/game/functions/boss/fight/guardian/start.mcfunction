##Start for guardian.

##Closing off the middle.
fill 1999 63 -3 2000 63 -3 minecraft:dark_prismarine
fill 1997 63 -1 1997 63 0 minecraft:dark_prismarine
fill 1999 63 2 2000 63 2 minecraft:dark_prismarine
fill 2002 63 0 2002 63 -1 minecraft:dark_prismarine

##Closing off the edges
fill 2002 63 15 1997 63 15 minecraft:dark_prismarine
fill 2002 65 15 1997 65 15 minecraft:dark_prismarine
fill 2002 67 15 1997 67 15 minecraft:dark_prismarine

fill 1984 63 2 1984 63 -3 minecraft:dark_prismarine
fill 1984 65 2 1984 65 -3 minecraft:dark_prismarine
fill 1984 67 2 1984 67 -3 minecraft:dark_prismarine

fill 1997 63 -16 2002 63 -16 minecraft:dark_prismarine
fill 1997 65 -16 2002 65 -16 minecraft:dark_prismarine
fill 1997 67 -16 2002 67 -16 minecraft:dark_prismarine

fill 2015 63 -3 2015 63 2 minecraft:dark_prismarine
fill 2015 65 -3 2015 65 2 minecraft:dark_prismarine
fill 2015 67 -3 2015 67 2 minecraft:dark_prismarine

##Removing players from center
execute as @a[x=1996,y=61,z=-4,dx=7,dy=4,dz=7,tag=playing,gamemode=adventure] at @s run tp @s @e[type=marker,tag=boss_room_spawnpoint,sort=random,limit=1]

##Removing players from corner
execute as @a[x=2014,y=62,z=-4,dx=3,dy=5,dz=7,tag=playing,gamemode=adventure] at @s run tp @s @e[type=marker,tag=boss_room_spawnpoint,sort=random,limit=1]
execute as @a[x=1996,y=62,z=-18,dx=7,dy=5,dz=3,tag=playing,gamemode=adventure] at @s run tp @s @e[type=marker,tag=boss_room_spawnpoint,sort=random,limit=1]
execute as @a[x=1982,y=62,z=-4,dx=3,dy=5,dz=7,tag=playing,gamemode=adventure] at @s run tp @s @e[type=marker,tag=boss_room_spawnpoint,sort=random,limit=1]
execute as @a[x=1996,y=62,z=14,dx=7,dy=5,dz=3,tag=playing,gamemode=adventure] at @s run tp @s @e[type=marker,tag=boss_room_spawnpoint,sort=random,limit=1]



particle explosion_emitter 2000.0 68 0.0 0 0 0 0 1
playsound entity:generic.explode master @a 2000.0 68 0.0
summon elder_guardian 2000.0 68 0.0 {Tags:["boss","enemy"],NoAI:1b,PersistenceRequired:1b}
