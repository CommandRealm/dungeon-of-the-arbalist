# called when we use an armor trim material unlock

# function game:shops/items/armor_trim_unlocks/use

scoreboard players set $calculate calculate 0

execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_1
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_iron
scoreboard players set $calculate calculate 0

execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_2
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_gold
scoreboard players set $calculate calculate 0

execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_3
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_quartz
scoreboard players set $calculate calculate 0

execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_4
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_redstone
scoreboard players set $calculate calculate 0


execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_5
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_lapis
scoreboard players set $calculate calculate 0


execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_6
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_emerald
scoreboard players set $calculate calculate 0


execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_7
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_amethyst
scoreboard players set $calculate calculate 0


execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_8
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_diamond
scoreboard players set $calculate calculate 0


execute store result score $calculate calculate run recipe take @s cosmetics:armor_trim_9
execute if score $calculate calculate matches 1 run function game:shops/items/armor_trim_unlocks/use_netherite
scoreboard players set $calculate calculate 0

scoreboard players reset @s click_book

# sound
playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 1 2
playsound minecraft:block.iron_trapdoor.open master @a ~ ~ ~ 1 1
particle enchant ~ ~1 ~ 0.25 1 0.25 0.1 200
function game:mechanics/get_armor