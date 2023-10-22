##Called to flip what is below name.

##Setting new timer.
scoreboard players set $below_name_time game 60

##Toggling state.
scoreboard players add $below_name_state game 1
execute if score $below_name_state game matches 2.. run scoreboard players set $below_name_state game 0

execute if score $below_name_state game matches 0 run scoreboard objectives setdisplay below_name health
execute if score $below_name_state game matches 1 run scoreboard objectives setdisplay below_name treasure