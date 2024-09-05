#Create AEC with name
summon minecraft:area_effect_cloud ~ ~1.25 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["die_between_games","rip_cosmetic"],Age:0,Duration:50,CustomNameVisible:1b,CustomName:'{"color":"dark_red","extra":[{"color":"dark_gray","text":"Rest In Peace..."},{"color":"dark_red","text":" \\u2620"}],"text":"\\u2620 "}'}
playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 1 0
return 1