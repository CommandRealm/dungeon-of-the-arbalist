#Manage cooldown scoreboard
scoreboard players remove @a[scores={punch_animation=1..}] punch_animation 1

#Run loop functions for animations
execute as @e[type=armor_stand,tag=anchor_cosmetic] at @s run function cosmetics:punch/anchor_loop
execute as @e[type=armor_stand,tag=skull_cosmetic] at @s run function cosmetics:punch/skull_loop
execute as @e[type=armor_stand,tag=grave] at @s run function cosmetics:punch/grave_loop