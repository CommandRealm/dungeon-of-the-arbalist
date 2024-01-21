# called to check our arrow count



execute store result score @s calculate run data get entity @s Inventory[{Slot:7b}].Count

# adding calculate (so the quiver is fully accounted for)
scoreboard players add @s calculate 125

execute unless entity @s[y=0,distance=..20] unless score @s calculate = @s quiver if score @s quiver matches ..250 run function game:mechanics/hotbar_arrow_display/get_arrow
execute unless entity @s[y=0,distance=..20] unless score @s calculate = @s quiver if score @s quiver matches 251.. unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:spectral_arrow",Count:125b}]}] run function game:mechanics/hotbar_arrow_display/get_max_spectral_arrows
