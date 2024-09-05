##Called if a key exists.

##Particles
execute at @e[type=minecraft:item,tag=crypt_key] run particle minecraft:item{item:"minecraft:red_concrete"} ~ ~0.15 ~ 0.15 0.15 0.15 0.15 20

##If there is a pickup
execute as @a[gamemode=adventure,tag=playing,team=game] at @s if entity @e[type=minecraft:item,distance=..1.5,tag=crypt_key] unless entity @s[nbt={Inventory:[{id:"minecraft:tripwire_hook",components:{"minecraft:custom_data":{key:"crypt"}}}]}] run function game:adventure/kingdom/key/pickup_crypt

return 1