##Main wave function
execute if score $time game matches 1000..1020 run function game:default/wave/intro/main

##Counting down enemy spawn timers
scoreboard players remove @a[scores={enemy_spawn_time=1..},tag=playing] enemy_spawn_time 1
execute as @a[scores={enemy_spawn_time=0},tag=playing] at @s run function game:enemy/player_spawn_enemy




##Removing wave time left
scoreboard players remove $wave_length game 1
scoreboard players remove $time bossbar_time 1
execute if score $wave_length game matches 1.. if score $time bossbar_time matches ..0 run function game:default/wave/update_bossbar_ui
execute if score $wave_length game matches 0 run function game:default/wave/wave_timer_end
execute if score $wave_length game matches ..-1 run function game:default/wave/check_enemy_count

##Calling enemy function
function game:enemy/main