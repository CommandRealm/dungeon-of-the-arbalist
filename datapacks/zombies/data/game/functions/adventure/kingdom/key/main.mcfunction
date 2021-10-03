##Called if a key exists.

##Particles
execute at @e[type=item,tag=crypt_key] run particle item red_concrete ~ ~0.15 ~ 0.15 0.15 0.15 0.15 20

##If there is a pickup
execute as @a[tag=playing,gamemode=adventure,team=game] at @s if entity @e[type=item,tag=crypt_key,distance=..1.5] unless entity @s[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{key:"crypt"}}]}] run function game:adventure/kingdom/key/pickup_crypt
