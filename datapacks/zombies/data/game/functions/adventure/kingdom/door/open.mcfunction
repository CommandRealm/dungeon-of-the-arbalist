##Called when a door opens on the castle map.



##Specific doors



##Area2
execute if entity @s[x=3045,y=80,z=37,distance=..5] run clone 3015 52 26 3015 56 28 3045 80 36
execute if entity @s[x=3045,y=80,z=37,distance=..5] unless entity @e[type=marker,tag=area_2,tag=unlocked] run function game:adventure/kingdom/new_area/area_2


execute if entity @s[x=3023,y=76,z=21,distance=..5] run clone 3029 42 -7 3033 47 -5 3021 75 21
execute if entity @s[x=3023,y=76,z=21,distance=..5] run function game:adventure/kingdom/new_area/area_2a

execute if entity @s[x=3039,y=91,z=21,distance=..5] run clone 3038 41 20 3041 45 23 3038 91 20
execute if entity @s[x=3039,y=91,z=21,distance=..5] run function game:adventure/kingdom/new_area/area_2b

execute if entity @s[x=3022,y=77,z=101,distance=..5] run clone 2941 79 133 2952 88 142 3017 76 98
execute if entity @s[x=3022,y=77,z=101,distance=..5] unless entity @e[type=marker,tag=area_3,tag=unlocked] run function game:adventure/kingdom/new_area/area_3
execute if entity @s[x=3022,y=77,z=101,distance=..5] unless entity @e[type=marker,tag=area_2,tag=unlocked] run function game:adventure/kingdom/new_area/area_2

##There is no area 4, the lounge was originally going to be area 4 but was added to area 5.

execute if entity @s[x=3034,y=70,z=153,distance=..5] run clone 3033 39 152 3035 44 155 3033 69 152
execute if entity @s[x=3034,y=70,z=153,distance=..5] unless entity @e[type=marker,tag=area_5,tag=unlocked] run function game:adventure/kingdom/new_area/area_5
execute if entity @s[x=3034,y=70,z=153,distance=..5] unless entity @e[type=marker,tag=area_3,tag=unlocked] run function game:adventure/kingdom/new_area/area_3


execute if entity @s[x=3082,y=70,z=128,distance=..5] run clone 3170 33 107 3180 47 111 3077 68 126
execute if entity @s[x=3082,y=70,z=128,distance=..5] run fill 3088 70 130 3077 81 132 air replace minecraft:dark_oak_trapdoor
execute if entity @s[x=3082,y=70,z=128,distance=..5] unless entity @e[type=marker,tag=area_5,tag=unlocked] run function game:adventure/kingdom/new_area/area_5
execute if entity @s[x=3082,y=70,z=128,distance=..5] unless entity @e[type=marker,tag=area_6,tag=unlocked] run function game:adventure/kingdom/new_area/area_6


execute if entity @s[x=3108,y=79,z=150,distance=..5] run clone 3135 50 96 3135 53 98 3108 79 149
execute if entity @s[x=3108,y=79,z=150,distance=..5] run function game:adventure/kingdom/new_area/area_5b

execute if entity @s[x=3089,y=90,z=182,distance=..5] run clone 3088 76 182 3090 83 184 3088 89 182
execute if entity @s[x=3089,y=90,z=182,distance=..5] run function game:adventure/kingdom/new_area/area_5d

execute if entity @s[x=3081,y=70,z=83,distance=..5] run clone 3071 47 92 3092 62 98 3071 69 80
execute if entity @s[x=3081,y=70,z=83,distance=..5] unless entity @e[type=marker,tag=area_6,tag=unlocked] run function game:adventure/kingdom/new_area/area_6

execute if entity @s[x=3096,y=45,z=179,distance=..5] run clone 3095 25 177 3096 29 180 3095 45 177
execute if entity @s[x=3096,y=45,z=179,distance=..5] run function game:adventure/kingdom/new_area/area_10a

execute if entity @s[x=3129,y=70,z=143,distance=..5] run clone 3128 50 142 3130 53 145 3128 70 142
execute if entity @s[x=3129,y=70,z=143,distance=..5] unless entity @e[type=marker,tag=area_6,tag=unlocked] run function game:adventure/kingdom/new_area/area_6



execute if entity @s[x=3160,y=73,z=113,distance=..5] run clone 3160 52 104 3160 57 106 3160 72 112
execute if entity @s[x=3160,y=73,z=113,distance=..5] run function game:adventure/kingdom/new_area/area_6a


execute if entity @s[x=3105,y=69,z=98,distance=..5] run clone 3110 52 97 3112 55 98 3104 68 98
execute if entity @s[x=3105,y=69,z=98,distance=..5] run function game:adventure/kingdom/new_area/area_6b



execute if entity @s[x=3145,y=71,z=104,distance=..5] run clone 3149 49 104 3150 53 106 3144 70 104
execute if entity @s[x=3145,y=71,z=104,distance=..5] run function game:adventure/kingdom/new_area/area_6c

execute if entity @s[x=3058,y=70,z=109,distance=..5] run clone 3068 52 105 3070 57 111 3057 70 106
execute if entity @s[x=3058,y=70,z=109,distance=..5] run function game:adventure/kingdom/new_area/area_6d


execute if entity @s[x=3105,y=90,z=188,distance=..5] run clone 3100 80 184 3102 84 187 3104 89 187
execute if entity @s[x=3105,y=90,z=188,distance=..5] unless entity @e[type=marker,tag=zombie_spawnpoint,tag=area_8,tag=unlocked] run function game:adventure/kingdom/new_area/area_8
execute if entity @s[x=3105,y=90,z=188,distance=..5] unless entity @e[type=marker,tag=zombie_spawnpoint,tag=area_5d,tag=unlocked] run function game:adventure/kingdom/new_area/area_5d



execute if entity @s[x=3035.0,y=92,z=170,distance=..5] run clone 3030 71 173 3027 75 171 3033 91 169
execute if entity @s[x=3035.0,y=92,z=170,distance=..5] unless entity @e[type=marker,tag=unlocked,tag=area_9] run function game:adventure/kingdom/new_area/area_9
execute if entity @s[x=3035.0,y=92,z=170,distance=..5] unless entity @e[type=marker,tag=unlocked,tag=area_8] run function game:adventure/kingdom/new_area/area_8

execute if entity @s[x=3011,y=92,z=194,distance=..5] run clone 3012 71 195 3013 76 197 3011 91 193
execute if entity @s[x=3011,y=92,z=194,distance=..5] run function game:adventure/kingdom/new_area/area_9a


execute if entity @s[x=3070,y=90,z=157,distance=..5] run clone 3024 34 77 3028 46 85 3067 89 153
execute if entity @s[x=3070,y=90,z=157,distance=..5] unless entity @e[type=marker,tag=unlocked,tag=area_9] run function game:adventure/kingdom/new_area/area_9

execute if entity @s[x=3160,y=72,z=192,distance=..5] run clone 3235 63 205 3241 68 211 3157 71 190
execute if entity @s[x=3160,y=72,z=192,distance=..5] run function game:adventure/kingdom/new_area/area_7a


execute if entity @s[x=3160,y=72,z=168,distance=..5] run clone 3158 31 167 3162 42 169 3158 71 167
execute if entity @s[x=3160,y=72,z=168,distance=..5] run function game:adventure/kingdom/new_area/area_6e


##Sound
execute if entity @s[tag=default_door] run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 1
execute if entity @s[tag=default_door] run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0.75

execute if entity @s[tag=boss_door] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1
execute if entity @s[tag=boss_door] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.75
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 0.5

##Removing tag
kill @s
kill @e[type=armor_stand,distance=..7,tag=door_text_marker,sort=nearest,limit=2]
kill @e[type=area_effect_cloud,distance=..7,tag=door_text,sort=nearest,limit=2]


execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:potion"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:red_shulker_box"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},x=0,y=66,z=0,distance=500..]
execute if score $starting_players game matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},x=0,y=66,z=0,distance=500..]