scoreboard players add @s punch_animation 1
tp @s ~ ~.1 ~ ~15 ~
particle witch ~ ~.5 ~ 0 0 0 1 0 force
execute if score @s punch_animation matches 40.. run playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1 1
execute if score @s punch_animation matches 40.. run particle block respawn_anchor ~ ~1 ~ .25 .25 .25 1 10 force
execute if score @s punch_animation matches 40.. run kill @s