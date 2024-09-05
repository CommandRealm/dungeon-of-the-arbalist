##avalanche snow

summon minecraft:armor_stand ~ ~3.5 ~ {Invisible:1b,DisabledSlots:16191,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:snow_block",count:1}],Tags:["falling_block","die_between_games","needs_death_timer","on_death_timer","avalanche_falling_block"],Invulnerable:1b}

##particles
particle minecraft:block{block_state:{Name:"minecraft:snow_block"}} ~ ~4.5 ~ 0.15 0.15 0.15 0.25 25

##sound
playsound minecraft:block.snow.place master @a ~ ~4.5 ~

##death timer
scoreboard players set @e[type=minecraft:armor_stand,tag=needs_death_timer] death_timer 100
tag @e[type=minecraft:armor_stand,tag=needs_death_timer] remove needs_death_timer
return 1