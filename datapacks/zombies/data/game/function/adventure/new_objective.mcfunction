##Called when we get the next objective

scoreboard players add @s objective 1
clear @s minecraft:compass
function game:mechanics/get_compass

playsound minecraft:block.lodestone.place master @s ~ ~ ~ 1 1.75
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1

function help:689763494308422bae413b6f55fbdd17bde7d9bf01b0ede627e993374dc8d208
return 1