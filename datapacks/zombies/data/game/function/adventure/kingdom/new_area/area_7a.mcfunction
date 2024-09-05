##Called when area_7a is opened



##Upgrade
execute positioned 3160 60.5 208 run function game:mechanics/upgrade/create/darkness_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon minecraft:marker 3160 59 213 {Tags:["doorway","die_between_games","boss_door","raycast","openable"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

scoreboard players set $opened boss 1


clear @a[tag=playing] minecraft:tripwire_hook[minecraft:custom_data={key_item:1b,key:"crypt"}]

fill 3158 51 259 3162 51 263 minecraft:black_concrete


scoreboard players set @a[tag=playing] objective 3
execute as @a[gamemode=adventure,tag=playing] at @s run function game:adventure/new_objective

##removing key
kill @e[type=minecraft:item,tag=crypt_key]
return 1