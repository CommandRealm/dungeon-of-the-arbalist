scoreboard players add @s punch_animation 1
tp @s ~ ~.1 ~ ~15 ~
particle end_rod ~ ~1.25 ~ 0 0 0 1 0 force
execute if score @s punch_animation matches 80.. run function cosmetics:punch/skull_over