##Called when the attack is in progress.


execute if score $attack boss matches 2147483632 run data modify entity @e[type=stray,tag=boss,limit=1] NoAI set value 0b
execute if score $attack boss matches ..2147483632 if entity @e[type=stray,tag=boss,nbt={HurtTime:9s}] run function game:boss/fight/stray/clones/end
execute if score $attack boss matches ..2147483632 unless entity @e[type=stray,tag=boss_minion] run function game:boss/fight/stray/clones/end
