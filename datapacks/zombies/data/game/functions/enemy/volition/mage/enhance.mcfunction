# called when we should enhance
scoreboard players set @s attack 200
scoreboard players set @s[tag=enhanced] attack 120

particle nautilus ~ ~ ~ 2 2 2 0.25 100
playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 1 1.25

tag @s add self
execute as @e[type=#minecraft:enemy,tag=!enhanced,sort=nearest,limit=1,distance=..5,tag=!self,team=enemy,tag=enemy] at @s run function game:enemy/volition/mage/enhance_effects
tag @s remove self
