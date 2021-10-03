##avalanche snow

summon armor_stand ~ ~3.5 ~ {Invisible:1b,DisabledSlots:16191,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:gray_wool",Count:1b}],Tags:["falling_block","die_between_games","needs_death_timer","on_death_timer","thunderstorm_falling_block"],Invulnerable:1b}

##particles
particle block gray_wool ~ ~4.5 ~ 0.15 0.15 0.15 0.25 25

##sound
playsound minecraft:block.netherite_block.break master @a ~ ~4.5 ~ 1 0

##death timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 100
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer