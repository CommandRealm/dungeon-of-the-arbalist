##Called to change our suffix.

# trims
execute unless data entity @s EnderItems[{Slot:0b,id:"minecraft:structure_void"}] run scoreboard players set @s cosmetics_trim 0
execute unless data entity @s[tag=trim_10] EnderItems[{Slot:1b,id:"minecraft:rib_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 10
execute unless data entity @s[tag=trim_11] EnderItems[{Slot:2b,id:"minecraft:coast_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 11
execute unless data entity @s[tag=trim_12] EnderItems[{Slot:3b,id:"minecraft:raiser_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 12
execute unless data entity @s[tag=trim_13] EnderItems[{Slot:4b,id:"minecraft:spire_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 13
execute unless data entity @s[tag=trim_14] EnderItems[{Slot:5b,id:"minecraft:wild_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 14
execute unless data entity @s[tag=trim_15] EnderItems[{Slot:6b,id:"minecraft:wayfinder_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 15
execute unless data entity @s[tag=trim_1] EnderItems[{Slot:9b,id:"minecraft:host_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 1
execute unless data entity @s[tag=trim_2] EnderItems[{Slot:10b,id:"minecraft:tide_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 2
execute unless data entity @s[tag=trim_3] EnderItems[{Slot:11b,id:"minecraft:snout_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 3
execute unless data entity @s[tag=trim_4] EnderItems[{Slot:12b,id:"minecraft:sentry_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 4
execute unless data entity @s[tag=trim_5] EnderItems[{Slot:13b,id:"minecraft:eye_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 5
execute unless data entity @s[tag=trim_6] EnderItems[{Slot:14b,id:"minecraft:vex_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 6
execute unless data entity @s[tag=trim_7] EnderItems[{Slot:15b,id:"minecraft:ward_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 7
execute unless data entity @s[tag=trim_8] EnderItems[{Slot:16b,id:"minecraft:dune_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 8
execute unless data entity @s[tag=trim_9] EnderItems[{Slot:17b,id:"minecraft:silence_armor_trim_smithing_template"}] run scoreboard players set @s cosmetics_trim 9


# updating armor
function game:mechanics/get_armor


##restarting screen
 #function lobby:chest_menu/start_armor_trims