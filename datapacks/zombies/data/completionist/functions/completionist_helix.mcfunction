execute as @e[tag=completionist_spin,type=area_effect_cloud] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=area_effect_cloud,tag=completionist_spin] at @s positioned as @a[advancements={completionist/completionist=true},tag=!playing,gamemode=adventure,tag=!no_completionist_particles] positioned ^ ^ ^1 positioned ~ ~2.75 ~ run function completionist:particle
execute as @e[type=area_effect_cloud,tag=completionist_spin] at @s positioned as @a[advancements={completionist/completionist=true},tag=!playing,gamemode=adventure,tag=!no_completionist_particles] positioned ^ ^ ^-1 positioned ~ ~2.75 ~ run function completionist:particle