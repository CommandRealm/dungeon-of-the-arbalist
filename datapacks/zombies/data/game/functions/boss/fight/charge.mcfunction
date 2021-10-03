##Charging function
scoreboard players remove $charge boss 1
execute if score $boss boss matches 0 run function game:boss/fight/ravager/charge
execute if score $boss boss matches 3 run function game:boss/fight/magma_cube/charge
execute if score $boss boss matches 4 run function game:boss/fight/forest_essence/charge
execute if score $charge boss matches 0 run function game:boss/fight/charge_over