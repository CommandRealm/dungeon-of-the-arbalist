#Set cooldown time
scoreboard players set @s punch_animation 50
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["die_between_games","anchor_cosmetic"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:respawn_anchor",components:{"minecraft:enchantment_glint_override":1b},count:1}]}
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 1
return 1