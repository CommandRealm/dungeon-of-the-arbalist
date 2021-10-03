##Called to end the attack.

##Sound
execute at @e[type=stray,tag=boss] run playsound minecraft:entity.stray.hurt master @a ~ ~ ~ 1 0

##Removing fakes
tp @e[type=stray,tag=boss_minion] 0 0 0
kill @e[type=stray,tag=boss_minion]

##Cooldowns
scoreboard players set $cooldown boss 250
scoreboard players set $attack boss 0
scoreboard players set $active_attack boss 0