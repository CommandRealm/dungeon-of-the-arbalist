##Called to countdown the upgrade.
scoreboard players remove $upgrade tutorial 1
execute if score $upgrade tutorial matches 0 run function lobby:tutorial/summon_upgrade