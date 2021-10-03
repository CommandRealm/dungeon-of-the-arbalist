##Called to see if the wave should end and update the bossbar.

function game:default/wave/update_wave_end_bossbar_ui


execute unless score $started boss matches 1.. if score $enemies_left game <= $enemies_required game run function game:default/wave/wave_end


