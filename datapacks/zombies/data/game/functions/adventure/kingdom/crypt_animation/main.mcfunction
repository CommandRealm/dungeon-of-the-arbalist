##Main crypt animation function
scoreboard players remove $crypt_animation game 1
execute if score $crypt_animation game matches 50 run function game:adventure/kingdom/crypt_animation/frame_1
execute if score $crypt_animation game matches 25 run function game:adventure/kingdom/crypt_animation/frame_2

execute if score $crypt_animation game matches 0 run function game:adventure/kingdom/crypt_animation/over