# called to assign element

scoreboard players set $mod random 9
function random:random

execute if score $rand random matches 0 run item replace entity @s weapon.offhand with magma_block
execute if score $rand random matches 1 run item replace entity @s weapon.offhand with prismarine_bricks
execute if score $rand random matches 2 run item replace entity @s weapon.offhand with granite
execute if score $rand random matches 3 run item replace entity @s weapon.offhand with white_stained_glass
execute if score $rand random matches 4 run item replace entity @s weapon.offhand with ice
execute if score $rand random matches 5 run item replace entity @s weapon.offhand with glowstone
execute if score $rand random matches 6 run item replace entity @s weapon.offhand with grass_block
execute if score $rand random matches 7 run item replace entity @s weapon.offhand with chiseled_polished_blackstone
execute if score $rand random matches 8 run item replace entity @s weapon.offhand with iron_block

execute if score $rand random matches 0 run tag @s add rogue_fire
execute if score $rand random matches 1 run tag @s add rogue_water
execute if score $rand random matches 2 run tag @s add rogue_earth
execute if score $rand random matches 3 run tag @s add rogue_air
execute if score $rand random matches 4 run tag @s add rogue_ice
execute if score $rand random matches 5 run tag @s add rogue_lightning
execute if score $rand random matches 6 run tag @s add rogue_nature
execute if score $rand random matches 7 run tag @s add rogue_darkness
execute if score $rand random matches 8 run tag @s add rogue_metal

# crossbows
function game:enemy/volition/rogue/load_crossbow
# other initializing stuff

scoreboard players set @s enemy_health 175
scoreboard players set @s enemy_loot_table 3