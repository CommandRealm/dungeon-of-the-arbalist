##Called to reset leads
tp @e[type=minecraft:leash_knot,x=0,y=66,z=0,distance=..500] 0 0 0
kill @e[type=minecraft:leash_knot,x=0,y=66,z=0,distance=..500]
kill @e[type=minecraft:item,x=0,y=66,z=0,distance=..500,nbt={Item:{id:"minecraft:lead"}}]
clear @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] minecraft:lead


##Staircase
data merge entity @e[type=minecraft:rabbit,x=-10,y=78,z=42,sort=nearest,limit=1] {Silent:1b,leash:[I;-10,75,46]}

data merge entity @e[type=minecraft:rabbit,x=-10,y=82,z=38,sort=nearest,limit=1] {Silent:1b,leash:[I;-10,79,42]}

data merge entity @e[type=minecraft:rabbit,x=-10,y=87,z=34,sort=nearest,limit=1] {Silent:1b,leash:[I;-10,83,38]}

summon minecraft:leash_knot -10 87 34 {Invulnerable:1b}


data merge entity @e[type=minecraft:rabbit,x=-6,y=78,z=42,sort=nearest,limit=1] {Silent:1b,leash:[I;-6,75,46]}

data merge entity @e[type=minecraft:rabbit,x=-6,y=82,z=38,sort=nearest,limit=1] {Silent:1b,leash:[I;-6,79,42]}

data merge entity @e[type=minecraft:rabbit,x=-6,y=87,z=34,sort=nearest,limit=1] {Silent:1b,leash:[I;-6,83,38]}

summon minecraft:leash_knot -6 87 34 {Invulnerable:1b}


##Main bridge
data merge entity @e[type=minecraft:rabbit,x=2,y=89,z=72,sort=nearest,limit=1] {Silent:1b,leash:[I;2,90,78]}

data merge entity @e[type=minecraft:rabbit,x=2,y=89,z=67,sort=nearest,limit=1] {Silent:1b,leash:[I;2,89,72]}

data merge entity @e[type=minecraft:rabbit,x=2,y=89,z=60,sort=nearest,limit=1] {Silent:1b,leash:[I;2,89,67]}

data merge entity @e[type=minecraft:rabbit,x=2,y=89,z=56,sort=nearest,limit=1] {Silent:1b,leash:[I;2,88,60]}

data merge entity @e[type=minecraft:rabbit,x=2,y=89,z=52,sort=nearest,limit=1] {Silent:1b,leash:[I;2,88,56]}

data merge entity @e[type=minecraft:rabbit,x=2,y=89,z=45,sort=nearest,limit=1] {Silent:1b,leash:[I;2,88,52]}

data merge entity @e[type=minecraft:rabbit,x=2,y=89,z=40,sort=nearest,limit=1] {Silent:1b,leash:[I;2,89,45]}

data merge entity @e[type=minecraft:rabbit,x=2,y=89,z=34,sort=nearest,limit=1] {Silent:1b,leash:[I;2,89,40]}

summon minecraft:leash_knot 2 90 34 {Invulnerable:1b}

data merge entity @e[type=minecraft:rabbit,x=6,y=89,z=72,sort=nearest,limit=1] {Silent:1b,leash:[I;6,90,78]}

data merge entity @e[type=minecraft:rabbit,x=6,y=89,z=67,sort=nearest,limit=1] {Silent:1b,leash:[I;6,89,72]}

data merge entity @e[type=minecraft:rabbit,x=6,y=89,z=60,sort=nearest,limit=1] {Silent:1b,leash:[I;6,89,67]}

data merge entity @e[type=minecraft:rabbit,x=6,y=89,z=56,sort=nearest,limit=1] {Silent:1b,leash:[I;6,88,60]}

data merge entity @e[type=minecraft:rabbit,x=6,y=89,z=52,sort=nearest,limit=1] {Silent:1b,leash:[I;6,88,56]}

data merge entity @e[type=minecraft:rabbit,x=6,y=89,z=45,sort=nearest,limit=1] {Silent:1b,leash:[I;6,88,52]}

data merge entity @e[type=minecraft:rabbit,x=6,y=89,z=40,sort=nearest,limit=1] {Silent:1b,leash:[I;6,89,45]}

data merge entity @e[type=minecraft:rabbit,x=6,y=89,z=34,sort=nearest,limit=1] {Silent:1b,leash:[I;6,89,40]}

summon minecraft:leash_knot 6 90 34 {Invulnerable:1b}

execute as @e[type=minecraft:leash_knot,x=0,y=66,z=0,distance=..500] at @s run data modify entity @s Invulnerable set value 1b
execute as @e[type=minecraft:leash_knot,x=0,y=66,z=0,distance=..500] at @s run data modify entity @s Silent set value 1b

##
tag @a add stop_lead_sound

return 1