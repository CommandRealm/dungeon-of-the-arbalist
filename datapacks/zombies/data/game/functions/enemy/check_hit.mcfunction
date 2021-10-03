##called to see if this was a melee hit





execute if entity @s[tag=!non_melee_damage] unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] run function game:enemy/take_melee_damage

tag @s remove non_melee_damage

##If it was a likely punch kill
execute as @p[tag=playing,advancements={game:punch_kill=true}] at @s run tag @e[type=area_effect_cloud,tag=punch_kill,sort=nearest,limit=1] add temporary_tag
execute if entity @e[type=area_effect_cloud,tag=punch_kill,tag=temporary_tag,distance=..1] as @p[tag=playing,advancements={game:punch_kill=true}] run function game:mechanics/get_punch_kill
tag @e[type=area_effect_cloud,tag=punch_kill] remove temporary_tag

##Removing punch kill advancement
advancement revoke @p[tag=playing,advancements={game:punch_kill=true}] only game:punch_kill