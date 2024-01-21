# called when we have crossbow effects

advancement revoke @s only game:pvp_effect
execute if data entity @s ActiveEffects[{Id:31,Amplifier:0b}] run function game:pvp/effects/earth_aoe_damage
execute if data entity @s ActiveEffects[{Id:31,Amplifier:1b}] run function game:pvp/effects/air_wind_effect
effect clear @s bad_omen