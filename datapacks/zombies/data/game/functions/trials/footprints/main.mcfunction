# called when we have an active trial
tag @s add temp

# finding ones with our score
execute as @e[type=marker,tag=footprint_marker] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=marker,tag=footprint_marker] at @s run scoreboard players operation @s calculate -= @p[tag=temp] id

# summon if needed
execute unless entity @e[type=marker,tag=footprint_marker,distance=..1.1] run function game:trials/footprints/summon

# killing deactivated ones, underneath us if we are in the air
# execute if entity @s[nbt={OnGround:0b}] positioned ~ ~-1 ~ run kill @e[distance=..1.25,type=marker,tag=footprint_marker,scores={death_timer=181..,calculate=0},tag=!activated_damage_point]
#execute if entity @s[nbt={OnGround:0b}] positioned ~ ~1 ~ run kill @e[distance=..1.25,type=marker,tag=footprint_marker,scores={death_timer=181..,calculate=0},tag=!activated_damage_point]

# activating
execute as @e[type=marker,tag=footprint_marker,tag=!activated_damage_point,scores={death_timer=75..180,calculate=0}] at @s unless entity @p[tag=temp,distance=..0.75] run function game:trials/footprints/check_activate_damage_point

# particles
execute as @e[type=marker,tag=footprint_marker,tag=activated_damage_point,scores={calculate=0,death_timer=75..}] at @s run function game:trials/footprints/particle_cooldown/main
execute as @e[type=marker,tag=footprint_marker,tag=activated_damage_point,scores={calculate=0,death_timer=75}] at @s run particle minecraft:block_marker soul_fire ~ ~.3 ~ 0.15 0.15 0.15 0.05 3 force @p[tag=temp]

# damage
execute as @e[type=marker,tag=footprint_marker,tag=activated_damage_point,scores={calculate=0}] at @s as @p[tag=temp,distance=..0.75] at @s unless score @s trial_firetrail_cooldown matches 1.. run function game:trials/footprints/damage

# execute at @e[type=marker,tag=footprint_marker] run particle crit ~ ~1 ~
tag @s remove temp


# if we have hurt time
execute if score @s trial_firetrail_cooldown matches 1.. run function game:trials/footprints/cooldown/main