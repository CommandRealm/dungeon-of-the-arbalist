##called to reload

tag @s add temporary_tag
##emptying our quiver
scoreboard players set @s quiver 0
clear @s minecraft:arrow
##sounds
playsound minecraft:item.crossbow.loading_start master @s ~ ~ ~ 1000 0.75
playsound minecraft:item.axe.strip master @s ~ ~ ~ 1 0.75

##Applying delay

#Crossbow
execute store result score @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]}] arrow_delay run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".reload_delay
#flint
execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]}] run scoreboard players operation @s arrow_delay = @s store_reload

##Temporary tag is removed when this function is called.
return 1