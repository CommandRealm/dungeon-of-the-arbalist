##Called when the cooldown is over.

##If there is no active attack
execute if score $active_attack boss matches 0 run scoreboard players operation $charge boss = $set_charge boss

##Starting the charge

execute if score $boss boss matches 0 run function game:boss/fight/ravager/start_charge
execute if score $boss boss matches 3 run function game:boss/fight/magma_cube/start_charge
execute if score $boss boss matches 4 run function game:boss/fight/forest_essence/start_charge