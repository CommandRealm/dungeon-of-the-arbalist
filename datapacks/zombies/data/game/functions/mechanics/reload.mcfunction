##called to reload

tag @s add temporary_tag
##emptying our quiver
scoreboard players set @s quiver 0
clear @s arrow
##sounds
playsound minecraft:item.crossbow.loading_start master @s ~ ~ ~ 1000 0.75
playsound minecraft:item.axe.strip master @s ~ ~ ~ 1 0.75

##Applying delay

#Crossbow
execute store result score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] arrow_delay run data get entity @s Inventory[{Slot:-106b}].tag.reload_delay

#flint
execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] run scoreboard players operation @s arrow_delay = @s[tag=!trial_four_in_the_quiver] store_reload

##Temporary tag is removed when this function is called.

scoreboard players set @s reload_percent -1