#Set cooldown time
scoreboard players set @s punch_animation 90
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["die_between_games","skull_cosmetic"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b,tag:{Enchantments:[{}]}}]}
playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 1