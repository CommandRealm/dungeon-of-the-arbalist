##Called when the guardian should explode.

##Explosion
summon creeper ~ ~2 ~ {Fuse:0s,Invulnerable:1b}

##Kill
tp @s 0 0 0
kill @s

##Setting cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0
scoreboard players set $cooldown boss 100
