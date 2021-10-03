##Called to give us (the zombie) a new leap timer

execute store result score @s attack run loot insert 0 1 0 loot random:potion_timer
function random:reset_chest