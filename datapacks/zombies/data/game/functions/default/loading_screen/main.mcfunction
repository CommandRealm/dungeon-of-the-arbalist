##Main loading screen function


scoreboard players add $loading_screen game 1

execute if score $loading_screen game matches 1 run title @a[tag=playing] title [{"text":"---------------------","color":"white"}]

execute if score $loading_screen game matches 14 run title @a[tag=playing] title [{"text":"-","color":"dark_green"},{"text":"--------------------","color":"white"}]

execute if score $loading_screen game matches 27 run title @a[tag=playing] title [{"text":"--","color":"dark_green"},{"text":"-------------------","color":"white"}]

execute if score $loading_screen game matches 40 run title @a[tag=playing] title [{"text":"---","color":"dark_green"},{"text":"------------------","color":"white"}]

execute if score $loading_screen game matches 53 run title @a[tag=playing] title [{"text":"----","color":"dark_green"},{"text":"-----------------","color":"white"}]

execute if score $loading_screen game matches 66 run title @a[tag=playing] title [{"text":"-----","color":"dark_green"},{"text":"----------------","color":"white"}]

execute if score $loading_screen game matches 79 run title @a[tag=playing] title [{"text":"------","color":"dark_green"},{"text":"---------------","color":"white"}]

execute if score $loading_screen game matches 92 run title @a[tag=playing] title [{"text":"-------","color":"dark_green"},{"text":"--------------","color":"white"}]

execute if score $loading_screen game matches 105 run title @a[tag=playing] title [{"text":"--------","color":"dark_green"},{"text":"-------------","color":"white"}]

execute if score $loading_screen game matches 118 run title @a[tag=playing] title [{"text":"---------","color":"dark_green"},{"text":"------------","color":"white"}]

execute if score $loading_screen game matches 131 run title @a[tag=playing] title [{"text":"----------","color":"dark_green"},{"text":"-----------","color":"white"}]

execute if score $loading_screen game matches 144 run title @a[tag=playing] title [{"text":"-----------","color":"dark_green"},{"text":"----------","color":"white"}]

execute if score $loading_screen game matches 157 run title @a[tag=playing] title [{"text":"------------","color":"dark_green"},{"text":"---------","color":"white"}]




execute if score $loading_screen game matches 170 run title @a[tag=playing] title [{"text":"-------------","color":"dark_green"},{"text":"--------","color":"white"}]

execute if score $loading_screen game matches 183 run title @a[tag=playing] title [{"text":"--------------","color":"dark_green"},{"text":"-------","color":"white"}]

execute if score $loading_screen game matches 196 run title @a[tag=playing] title [{"text":"---------------","color":"dark_green"},{"text":"------","color":"white"}]

execute if score $loading_screen game matches 209 run title @a[tag=playing] title [{"text":"----------------","color":"dark_green"},{"text":"-----","color":"white"}]

execute if score $loading_screen game matches 222 run title @a[tag=playing] title [{"text":"-----------------","color":"dark_green"},{"text":"----","color":"white"}]

execute if score $loading_screen game matches 235 run title @a[tag=playing] title [{"text":"------------------","color":"dark_green"},{"text":"---","color":"white"}]

execute if score $loading_screen game matches 248 run title @a[tag=playing] title [{"text":"-------------------","color":"dark_green"},{"text":"--","color":"white"}]

execute if score $loading_screen game matches 261 run title @a[tag=playing] title [{"text":"--------------------","color":"dark_green"},{"text":"-","color":"white"}]

execute if score $loading_screen game matches 270 run title @a[tag=playing] title [{"text":"---------------------","color":"dark_green"}]



title @a[tag=playing] subtitle [{"text":"☣ ","color":"dark_green"},{"text":"Generation ","color":"gray"},{"text":"in progress . . .","color":"dark_gray"}]

