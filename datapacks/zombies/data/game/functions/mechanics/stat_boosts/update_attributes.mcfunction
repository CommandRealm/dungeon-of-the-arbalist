##Called to update attributes.



##Health
attribute @s[scores={boost_health=0}] generic.max_health base set 20.0
attribute @s[scores={boost_health=1}] generic.max_health base set 22.0
attribute @s[scores={boost_health=2}] generic.max_health base set 24.0
attribute @s[scores={boost_health=3}] generic.max_health base set 26.0
attribute @s[scores={boost_health=4}] generic.max_health base set 28.0
attribute @s[scores={boost_health=5}] generic.max_health base set 30.0

attribute @s[scores={boost_speed=0}] generic.movement_speed base set 0.1
attribute @s[scores={boost_speed=1}] generic.movement_speed base set 0.108
attribute @s[scores={boost_speed=2}] generic.movement_speed base set 0.116
attribute @s[scores={boost_speed=3}] generic.movement_speed base set 0.124
attribute @s[scores={boost_speed=4}] generic.movement_speed base set 0.132
attribute @s[scores={boost_speed=5}] generic.movement_speed base set 0.140

##nightmare
execute if score $difficulty settings matches 6 run attribute @s[tag=!tutorial] generic.max_health base set 2

attribute @s generic.knockback_resistance base set 1.0

attribute @s generic.attack_speed base set 1024