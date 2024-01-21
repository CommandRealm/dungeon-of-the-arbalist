##called to check stat boosts


# Normal checks
execute if score @s boost_health matches ..4 if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:red_dye",tag:{stat_boost:1b}}]}] unless entity @s[scores={booster_delay=1..}] run function game:mechanics/stat_boosts/use_health
execute if score @s boost_quiver matches ..4 if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:orange_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_quiver
execute if score @s boost_treasure matches ..4 if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:yellow_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_looting
execute if score @s boost_revive matches ..4 if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:lime_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_revive
execute if score @s boost_speed matches ..4 if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:light_blue_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_speed
execute if score @s boost_damage matches ..4 if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:purple_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_damage

# Mastery Checks

execute unless entity @s[scores={boost_health=..4,boost_quiver=..4,boost_treasure=..4,boost_revive=..4,boost_speed=..4,boost_damage=..4}] run function game:mechanics/stat_boosts/mastery/check_count


# advancements
execute if score $volition game matches 1 unless entity @s[scores={mastery_health=0,mastery_quiver=0,mastery_treasure=0,mastery_revive=0,mastery_damage=0,mastery_speed=0}] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[tag=playing] only advancements:volition/item-prestiged
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if entity @s[scores={mastery_health=1..,mastery_quiver=1..,mastery_treasure=1..,mastery_revive=1..,mastery_damage=1..,mastery_speed=1..}] run advancement grant @s[tag=playing] only advancements:volition/item-upgrader

# execute if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:red_dye",tag:{stat_boost:1b}}]}] unless entity @s[scores={booster_delay=1..}] run function game:mechanics/stat_boosts/use_health
# 
# execute if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:orange_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_quiver
# 
# execute if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:yellow_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_looting
# 
# execute if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:lime_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_revive
# 
# execute if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:light_blue_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_speed
# 
# execute if entity @s[tag=mechanics,gamemode=adventure,nbt={Inventory:[{id:"minecraft:purple_dye",tag:{stat_boost:1b}}]}] run function game:mechanics/stat_boosts/use_damage