##Called if a key exists.

##Particles
execute at @e[type=minecraft:item,tag=pink_key] run particle minecraft:item{item:"minecraft:pink_concrete"} ~ ~0.15 ~ 0.15 0.15 0.15 0.15 20


execute at @e[type=minecraft:item,tag=blue_key] run particle minecraft:item{item:"minecraft:blue_concrete"} ~ ~0.15 ~ 0.15 0.15 0.15 0.15 20

##If there is a pickup
execute as @a[gamemode=adventure,tag=playing,team=game] at @s if entity @e[type=minecraft:item,distance=..1.5,tag=pink_key] unless entity @s[nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] run function game:adventure/castle/key/pickup_pink
execute as @a[gamemode=adventure,tag=playing,team=game] at @s if entity @e[type=minecraft:item,distance=..1.5,tag=blue_key] unless entity @s[nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] run function game:adventure/castle/key/pickup_blue

##If a player has a key.
execute if entity @a[gamemode=adventure,tag=playing,team=game,nbt={Inventory:[{components:{"minecraft:custom_data":{key_item:1b}}}]}] run function game:adventure/castle/key/player_has_key
return 1