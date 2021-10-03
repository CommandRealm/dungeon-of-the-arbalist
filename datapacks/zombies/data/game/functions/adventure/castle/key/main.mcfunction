##Called if a key exists.

##Particles
execute at @e[type=item,tag=pink_key] run particle item pink_concrete ~ ~0.15 ~ 0.15 0.15 0.15 0.15 20


execute at @e[type=item,tag=blue_key] run particle item blue_concrete ~ ~0.15 ~ 0.15 0.15 0.15 0.15 20

##If there is a pickup
execute as @a[tag=playing,gamemode=adventure,team=game] at @s if entity @e[type=item,tag=pink_key,distance=..1.5] unless entity @s[nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] run function game:adventure/castle/key/pickup_pink
execute as @a[tag=playing,gamemode=adventure,team=game] at @s if entity @e[type=item,tag=blue_key,distance=..1.5] unless entity @s[nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] run function game:adventure/castle/key/pickup_blue

##If a player has a key.
execute if entity @a[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{tag:{key_item:1b}}]}] run function game:adventure/castle/key/player_has_key