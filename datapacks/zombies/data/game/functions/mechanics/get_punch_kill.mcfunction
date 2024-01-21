##Called when we get a punch kill.


##Score and advancement revoke.
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run scoreboard players add @s[tag=!tutorial] global_punch 1


##Finding a nearby killed zombie.
execute at @e[type=area_effect_cloud,tag=punch_kill,sort=nearest,limit=1] run function cosmetics:punch/activate
kill @e[type=area_effect_cloud,tag=punch_kill,sort=nearest,limit=1]
