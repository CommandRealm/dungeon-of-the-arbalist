##Called when there is an active upgrade text animation.
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=upgrade_text,scores={animation=0..}] animation 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=upgrade_text,scores={animation=5}] run function game:mechanics/upgrade/animation/frame_one
execute if entity @e[type=minecraft:area_effect_cloud,tag=upgrade_text,scores={animation=10}] run function game:mechanics/upgrade/animation/frame_two

##Particles
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_upgrade_text]


execute at @e[type=minecraft:area_effect_cloud,tag=fire_upgrade_text] positioned ~ ~-2.5 ~ run particle minecraft:lava ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
execute at @e[type=minecraft:area_effect_cloud,tag=water_upgrade_text] positioned ~ ~-2.5 ~ run particle minecraft:rain ~ ~0.75 ~ 0.25 0.5 0.25 0.25 25
execute at @e[type=minecraft:area_effect_cloud,tag=earth_upgrade_text] positioned ~ ~-2.5 ~ run function game:mechanics/upgrade/animation/earth_particles
execute at @e[type=minecraft:area_effect_cloud,tag=air_upgrade_text] positioned ~ ~-2.5 ~ run particle minecraft:cloud ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
execute at @e[type=minecraft:area_effect_cloud,tag=ice_upgrade_text] positioned ~ ~-2.5 ~ run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~0.75 ~ 0.25 0.5 0.25 0.25 15
execute at @e[type=minecraft:area_effect_cloud,tag=lightning_upgrade_text] positioned ~ ~-2.5 ~ run function game:mechanics/upgrade/animation/lightning_particles
execute at @e[type=minecraft:area_effect_cloud,tag=nature_upgrade_text] positioned ~ ~-2.5 ~ run function game:mechanics/upgrade/animation/nature_particles
execute at @e[type=minecraft:area_effect_cloud,tag=darkness_upgrade_text] positioned ~ ~-2.5 ~ run particle minecraft:squid_ink ~ ~0.75 ~ 0.25 0.5 0.25 0.1 5
execute at @e[type=minecraft:area_effect_cloud,tag=metal_upgrade_text] positioned ~ ~-2.5 ~ run particle minecraft:item{item:"minecraft:iron_block"} ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
return 1