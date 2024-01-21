# called when the wind is over

execute unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:leather"}]}] if score @s quiver matches ..0 run function game:mechanics/wind/force_reload

stopsound @s * minecraft:item.elytra.flying
playsound minecraft:entity.guardian.death master @s ~ ~ ~ 1 0.8
scoreboard players reset @s wind
