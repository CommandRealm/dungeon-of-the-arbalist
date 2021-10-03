##Called to calculate our xp bar percentage


execute as @a[tag=mechanics,scores={quiver=..0}] at @s run scoreboard players operation @s calculate = @s arrow_delay
execute as @a[tag=mechanics,scores={quiver=..0}] at @s run scoreboard players operation @s calculate *= $100 number
execute as @a[tag=mechanics,scores={quiver=..0}] at @s run scoreboard players operation @s calculate /= @s store_reload

xp set @a[tag=mechanics,scores={calculate=15..28,quiver=..0}] 1 points
xp set @a[tag=mechanics,scores={calculate=29..43,quiver=..0}] 2 points
xp set @a[tag=mechanics,scores={calculate=44..58,quiver=..0}] 3 points
xp set @a[tag=mechanics,scores={calculate=59..73,quiver=..0}] 4 points
xp set @a[tag=mechanics,scores={calculate=74..88,quiver=..0}] 5 points
xp set @a[tag=mechanics,scores={calculate=89..100,quiver=..0}] 6 points