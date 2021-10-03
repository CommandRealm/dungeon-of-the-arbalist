##Called when we get the next objective

scoreboard players add @s objective 1
clear @s compass
function game:mechanics/get_compass

playsound minecraft:block.lodestone.place master @s ~ ~ ~ 1 1.75
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1

tellraw @s [{"text":"- ","color":"gray"},{"text":"Objective completed!\n","color":"gold"},{"text":"Current ","color":"dark_purple","bold":true},{"nbt":"Inventory[{Slot:8b}].tag.display.Name","entity":"@s","interpret":true}]