##Called to find our effect.
execute if score @s calculate matches 0 run function game:enemy/effect/earth_aoe_damage
execute unless entity @s[tag=no_knockback] unless entity @s[tag=boss] if score @s calculate matches 1 run function game:enemy/effect/air_pushback
execute if score @s calculate matches 2 run function game:enemy/effect/boulder_aoe_damage
execute unless entity @s[tag=no_knockback] unless entity @s[tag=boss] if score @s calculate matches 3 run function game:enemy/effect/tornado_pushback
execute if score @s calculate matches 4 run function game:enemy/effect/basalt_aoe_damage
execute if score @s calculate matches 5 run function game:enemy/effect/conduction_addition
execute if score @s calculate matches 6 run function game:enemy/effect/combustion_burning_aoe
execute unless entity @s[tag=no_knockback] unless entity @s[tag=boss] if score @s calculate matches 7 run function game:enemy/effect/cumulonimbus_pushback
execute if score @s calculate matches 8 run function game:enemy/effect/erratics_aoe_slowness
execute if score @s calculate matches 9 run function game:enemy/effect/cavern_aoe_damage
execute unless entity @s[tag=no_knockback] unless entity @s[tag=boss] if score @s calculate matches 10 run function game:enemy/effect/atmosphere_pushback
execute if score @s calculate matches 11 run function game:enemy/effect/wildfire_burn
execute if score @s calculate matches 12 run function game:enemy/effect/asteroid_levitation_aoe
execute if score @s calculate matches 13 run function game:enemy/effect/antumbra_extra_damage
execute if score @s calculate matches 14 run function game:enemy/effect/superconductor_addition
execute if score @s calculate matches 15 run function game:enemy/effect/frostbite_damage
execute if score @s calculate matches 16 run function game:enemy/effect/avalanche_snow
execute if score @s calculate matches 17 run function game:enemy/effect/cloud_levitation
execute if score @s calculate matches 18 run function game:enemy/effect/thunderstorm_cloud
execute if score @s calculate matches 19 run function game:enemy/effect/iceberg_slowness
execute if score @s calculate matches 20 run function game:enemy/effect/spontaneous_delay_aoe
execute if score @s calculate matches 21 run function game:enemy/effect/igneous_aoe_damage
execute unless entity @s[tag=no_knockback] unless entity @s[tag=boss] if score @s calculate matches 22 run function game:enemy/effect/deluge_pushback
execute unless entity @s[tag=no_knockback] unless entity @s[tag=boss] if score @s calculate matches 23 run function game:enemy/effect/blizzard_pushback
execute if score @s calculate matches 24 run function game:enemy/effect/plasma_burning_aoe
execute if score @s calculate matches 25 run function game:enemy/effect/landslide_mud
execute if score @s calculate matches 26 run function game:enemy/effect/antimatter_damage
execute if score @s calculate matches 27 run function game:enemy/effect/inferno_burn

execute if score @s calculate matches 100 run function game:enemy/effect/dead_player_pushback




execute if score @s calculate matches 28 run function game:enemy/effect/fire_burn
execute if score @s calculate matches 29 run function game:enemy/effect/magma_burn
execute if score @s calculate matches 30 run function game:enemy/effect/volcanic_burn

