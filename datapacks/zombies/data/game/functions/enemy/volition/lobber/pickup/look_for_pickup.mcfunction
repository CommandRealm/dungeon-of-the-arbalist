# called to see if we can pick anything up
# ride
ride @s mount @e[type=wither_skeleton,tag=self,sort=nearest,limit=1]

# polish
particle happy_villager ~ ~1 ~ 0.2 0.4 0.2 0 25
playsound minecraft:entity.horse.saddle master @a ~ ~ ~ 1 0.5

scoreboard players set @e[type=wither_skeleton,tag=self,sort=nearest,limit=1] attack 80