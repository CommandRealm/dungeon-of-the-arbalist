##Called when we sneak while looking at an upgrade

##Show crossbow details.
scoreboard players operation $calculate calculate = @s crossbow_id
scoreboard players operation @s crossbow_id = @s possible_upgrade
function game:mechanics/get_crossbow_details_from_shop
scoreboard players operation @s crossbow_id = $calculate calculate


##tag
tag @s add shown_item_message
scoreboard players set @s desc_delay 20
##sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.15
