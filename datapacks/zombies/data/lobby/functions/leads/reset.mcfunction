##Called to reset leads
tp @e[type=leash_knot,x=0,y=66,z=0,distance=..500] 0 0 0
kill @e[type=leash_knot,x=0,y=66,z=0,distance=..500]
kill @e[type=item,x=0,y=66,z=0,distance=..500,nbt={Item:{id:"minecraft:lead"}}]
clear @a[x=0,y=66,z=0,gamemode=adventure,distance=..500] lead


##Staircase
data merge entity @e[type=rabbit,x=-10,y=78,z=42,sort=nearest,limit=1] {Silent:1b,Leash:{X:-10,Y:75,Z:46}}

data merge entity @e[type=rabbit,x=-10,y=82,z=38,sort=nearest,limit=1] {Silent:1b,Leash:{X:-10,Y:79,Z:42}}

data merge entity @e[type=rabbit,x=-10,y=87,z=34,sort=nearest,limit=1] {Silent:1b,Leash:{X:-10,Y:83,Z:38}}

summon leash_knot -10 87 34 {Invulnerable:1b}


data merge entity @e[type=rabbit,x=-6,y=78,z=42,sort=nearest,limit=1] {Silent:1b,Leash:{X:-6,Y:75,Z:46}}

data merge entity @e[type=rabbit,x=-6,y=82,z=38,sort=nearest,limit=1] {Silent:1b,Leash:{X:-6,Y:79,Z:42}}

data merge entity @e[type=rabbit,x=-6,y=87,z=34,sort=nearest,limit=1] {Silent:1b,Leash:{X:-6,Y:83,Z:38}}

summon leash_knot -6 87 34 {Invulnerable:1b}


##Main bridge
data merge entity @e[type=rabbit,x=2,y=89,z=72,sort=nearest,limit=1] {Silent:1b,Leash:{X:2,Y:90,Z:78}}

data merge entity @e[type=rabbit,x=2,y=89,z=67,sort=nearest,limit=1] {Silent:1b,Leash:{X:2,Y:89,Z:72}}

data merge entity @e[type=rabbit,x=2,y=89,z=60,sort=nearest,limit=1] {Silent:1b,Leash:{X:2,Y:89,Z:67}}

data merge entity @e[type=rabbit,x=2,y=89,z=56,sort=nearest,limit=1] {Silent:1b,Leash:{X:2,Y:88,Z:60}}

data merge entity @e[type=rabbit,x=2,y=89,z=52,sort=nearest,limit=1] {Silent:1b,Leash:{X:2,Y:88,Z:56}}

data merge entity @e[type=rabbit,x=2,y=89,z=45,sort=nearest,limit=1] {Silent:1b,Leash:{X:2,Y:88,Z:52}}

data merge entity @e[type=rabbit,x=2,y=89,z=40,sort=nearest,limit=1] {Silent:1b,Leash:{X:2,Y:89,Z:45}}

data merge entity @e[type=rabbit,x=2,y=89,z=34,sort=nearest,limit=1] {Silent:1b,Leash:{X:2,Y:89,Z:40}}

summon leash_knot 2 90 34 {Invulnerable:1b}

data merge entity @e[type=rabbit,x=6,y=89,z=72,sort=nearest,limit=1] {Silent:1b,Leash:{X:6,Y:90,Z:78}}

data merge entity @e[type=rabbit,x=6,y=89,z=67,sort=nearest,limit=1] {Silent:1b,Leash:{X:6,Y:89,Z:72}}

data merge entity @e[type=rabbit,x=6,y=89,z=60,sort=nearest,limit=1] {Silent:1b,Leash:{X:6,Y:89,Z:67}}

data merge entity @e[type=rabbit,x=6,y=89,z=56,sort=nearest,limit=1] {Silent:1b,Leash:{X:6,Y:88,Z:60}}

data merge entity @e[type=rabbit,x=6,y=89,z=52,sort=nearest,limit=1] {Silent:1b,Leash:{X:6,Y:88,Z:56}}

data merge entity @e[type=rabbit,x=6,y=89,z=45,sort=nearest,limit=1] {Silent:1b,Leash:{X:6,Y:88,Z:52}}

data merge entity @e[type=rabbit,x=6,y=89,z=40,sort=nearest,limit=1] {Silent:1b,Leash:{X:6,Y:89,Z:45}}

data merge entity @e[type=rabbit,x=6,y=89,z=34,sort=nearest,limit=1] {Silent:1b,Leash:{X:6,Y:89,Z:40}}

summon leash_knot 6 90 34 {Invulnerable:1b}

execute as @e[type=leash_knot,x=0,y=66,z=0,distance=..500] at @s run data modify entity @s Invulnerable set value 1b
execute as @e[type=leash_knot,x=0,y=66,z=0,distance=..500] at @s run data modify entity @s Silent set value 1b

##
tag @a add stop_lead_sound
