function credits:pl
function credits:calverin
function credits:hippeh
function credits:check
function credits:bagee/bagee
function credits:pug/pug
function credits:boba/boba
function credits:deemo/deemo
function credits:deadpool

scoreboard players add $time credits 1
execute if score $time credits matches 140.. run function credits:cycle_armor_stand
execute as @a[gamemode=adventure,x=16,y=90,z=14,dx=16,dy=6,dz=11] at @s if entity @e[type=armor_stand,tag=show_details,distance=..7] anchored eyes run function credits:raycast