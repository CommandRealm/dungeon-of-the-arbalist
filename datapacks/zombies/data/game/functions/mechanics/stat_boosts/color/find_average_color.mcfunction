##Called to find the balance between our two colors.

##Storing our current. color
scoreboard players operation $saved_color color = @s color
function game:mechanics/stat_boosts/color/convert_color_to_rgb

##storing rgb in calculate
scoreboard players operation $red calculate = $red color
scoreboard players operation $green calculate = $green color
scoreboard players operation $blue calculate = $blue color

scoreboard players operation $red calculate *= @s colors_in_armor
scoreboard players operation $green calculate *= @s colors_in_armor
scoreboard players operation $blue calculate *= @s colors_in_armor

##Finding our new color's rgb.
scoreboard players operation @s color = @s new_color
function game:mechanics/stat_boosts/color/convert_color_to_rgb


##Finding the average
scoreboard players operation $red color += $red calculate
scoreboard players operation $green color += $green calculate
scoreboard players operation $blue color += $blue calculate


scoreboard players operation $red color /= @s colors_for_armor
scoreboard players operation $green color /= @s colors_for_armor
scoreboard players operation $blue color /= @s colors_for_armor

scoreboard players add @s colors_in_armor 1
scoreboard players add @s colors_for_armor 1


##Getting our new color.
function game:mechanics/stat_boosts/color/convert_rgb_to_decimal
scoreboard players operation @s color = $color calculate

clear @s leather_leggings