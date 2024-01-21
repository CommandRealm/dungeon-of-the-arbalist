##called to give or subtract a random amount of treasure.

execute store result score $rand random run loot insert 0 1 0 loot random:healing_chest_result
function random:reset_chest

execute if score $rand random matches ..6 run tellraw @s [{"text":"Opening the chest caused nothing. ","color":"gold"}]
execute if score $rand random matches 7.. run tellraw @s [{"text":"Opening the chest caused you to gain ","color":"gold"},{"text":"health","color":"red"}]


execute if score $rand random matches 7 run effect give @s regeneration 3 4 true
execute if score $rand random matches 8 run effect give @s regeneration 3 3 true
execute if score $rand random matches 9 run effect give @s regeneration 3 2 true
execute if score $rand random matches 10 run effect give @s regeneration 3 1 true
execute if score $rand random matches 11.. run effect give @s regeneration 3 0 true

execute if score $healthshare modifiers matches 1 if score $rand random matches 7 run effect give @a[tag=playing] regeneration 3 4 true
execute if score $healthshare modifiers matches 1 if score $rand random matches 8 run effect give @a[tag=playing] regeneration 3 3 true
execute if score $healthshare modifiers matches 1 if score $rand random matches 9 run effect give @a[tag=playing] regeneration 3 2 true
execute if score $healthshare modifiers matches 1 if score $rand random matches 10 run effect give @a[tag=playing] regeneration 3 1 true
execute if score $healthshare modifiers matches 1 if score $rand random matches 11.. run effect give @a[tag=playing] regeneration 3 0 true
##sound
playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 1 1