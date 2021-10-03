##Called when the charge is over.
execute if score $boss boss matches 0 run function game:boss/fight/ravager/charge_over
execute if score $boss boss matches 3 run function game:boss/fight/magma_cube/charge_over
execute if score $boss boss matches 4 run function game:boss/fight/forest_essence/charge_over

##attack
function game:boss/fight/attack