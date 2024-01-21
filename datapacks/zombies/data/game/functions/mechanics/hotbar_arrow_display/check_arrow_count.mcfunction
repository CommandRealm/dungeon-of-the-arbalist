# called to check our arrow count
execute store result score @s calculate run data get entity @s Inventory[{Slot:7b}].Count
execute unless entity @s[y=0,distance=..20] unless score @s calculate = @s quiver run function game:mechanics/hotbar_arrow_display/get_arrow
