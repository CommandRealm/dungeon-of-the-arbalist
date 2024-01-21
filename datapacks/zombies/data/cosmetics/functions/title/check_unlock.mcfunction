##Called to check the unlock

##Updating our reached tier.
scoreboard players set $calculate calculate 0
execute if entity @s[scores={crossbow_id=1..9}] run scoreboard players set $calculate calculate 1
execute if entity @s[scores={crossbow_id=10..27}] run scoreboard players set $calculate calculate 2
execute if entity @s[scores={crossbow_id=28..}] run scoreboard players set $calculate calculate 3

execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $calculate calculate >= @s reached_tier run function cosmetics:title/unlock