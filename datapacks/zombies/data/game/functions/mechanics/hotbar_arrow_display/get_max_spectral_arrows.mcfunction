# called to get max spectral arrows
scoreboard players operation $calculate calculate = @s quiver
scoreboard players set @s quiver 250
function game:mechanics/hotbar_arrow_display/get_arrow
scoreboard players operation @s quiver = $calculate calculate
