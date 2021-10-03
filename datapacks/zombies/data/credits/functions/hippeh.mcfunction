scoreboard players set @e[tag=hippeh,scores={HArm1=10..}] HArmD 2
scoreboard players set @e[tag=hippeh,scores={HArm1=..-10}] HArmD 1
execute if entity @e[tag=hippeh,scores={HArmD=1}] run function credits:addarm
execute if entity @e[tag=hippeh,scores={HArmD=2}] run function credits:removearm

scoreboard players set @e[tag=hippeh,scores={HArm2=10..}] HArmD2 2
scoreboard players set @e[tag=hippeh,scores={HArm2=..-10}] HArmD2 1
execute if entity @e[tag=hippeh,scores={HArmD2=1}] run function credits:addarm2
execute if entity @e[tag=hippeh,scores={HArmD2=2}] run function credits:removearm2

