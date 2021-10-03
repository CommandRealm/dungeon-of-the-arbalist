##avalanche snow

summon armor_stand ~ ~3.5 ~ {Invisible:1b,DisabledSlots:16191,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:coarse_dirt",Count:1b}],Tags:["falling_block","die_between_games","needs_death_timer","on_death_timer","landslide_falling_block"],Invulnerable:1b}

##particles
particle block coarse_dirt ~ ~4.5 ~ 0.15 0.15 0.15 0.25 25

##sound
playsound minecraft:block.grass.place master @a ~ ~4.5 ~ 1 1

##death timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 100
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer