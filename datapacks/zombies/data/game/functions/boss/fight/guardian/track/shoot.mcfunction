##Called when the track should attack.

##Called when the track should finish.

particle rain ~ ~ ~ 1 1 1 0 500

playsound minecraft:entity.drowned.swim master @a ~ ~ ~ 1 0
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 0
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0

effect give @a[tag=playing,gamemode=adventure,distance=..1] instant_damage 1 0 true
execute if entity @a[tag=playing,gamemode=adventure,distance=..1] run playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 1



##Setting cooldown
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0
scoreboard players set $cooldown boss 60
