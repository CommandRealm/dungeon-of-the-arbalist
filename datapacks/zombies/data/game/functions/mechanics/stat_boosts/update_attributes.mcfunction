##Called to update attributes.



##Health
attribute @s[scores={boost_health=0}] generic.max_health base set 20.0
attribute @s[scores={boost_health=1,mastery_health=0}] generic.max_health base set 22.0
attribute @s[scores={boost_health=2,mastery_health=0}] generic.max_health base set 24.0
attribute @s[scores={boost_health=3,mastery_health=0}] generic.max_health base set 26.0
attribute @s[scores={boost_health=4,mastery_health=0}] generic.max_health base set 28.0
attribute @s[scores={boost_health=5,mastery_health=0}] generic.max_health base set 30.0
attribute @s[scores={mastery_health=1}] generic.max_health base set 30.5
attribute @s[scores={mastery_health=2}] generic.max_health base set 31.5
attribute @s[scores={mastery_health=3}] generic.max_health base set 33
attribute @s[scores={mastery_health=4}] generic.max_health base set 35
attribute @s[scores={mastery_health=5}] generic.max_health base set 37.5
attribute @s[scores={mastery_health=6}] generic.max_health base set 40.5
attribute @s[scores={mastery_health=7}] generic.max_health base set 44
attribute @s[scores={mastery_health=8}] generic.max_health base set 48
attribute @s[scores={mastery_health=9}] generic.max_health base set 52.5
attribute @s[scores={mastery_health=10}] generic.max_health base set 57.5
attribute @s[scores={mastery_health=11}] generic.max_health base set 63
attribute @s[scores={mastery_health=12}] generic.max_health base set 69
attribute @s[scores={mastery_health=13}] generic.max_health base set 75.5
attribute @s[scores={mastery_health=14}] generic.max_health base set 82.5
attribute @s[scores={mastery_health=15}] generic.max_health base set 90
attribute @s[scores={mastery_health=16}] generic.max_health base set 98
attribute @s[scores={mastery_health=17}] generic.max_health base set 106.5
attribute @s[scores={mastery_health=18}] generic.max_health base set 115.5
attribute @s[scores={mastery_health=19}] generic.max_health base set 125
attribute @s[scores={mastery_health=20}] generic.max_health base set 135
attribute @s[scores={mastery_health=21}] generic.max_health base set 145.5
attribute @s[scores={mastery_health=22}] generic.max_health base set 156.5
attribute @s[scores={mastery_health=23}] generic.max_health base set 168
attribute @s[scores={mastery_health=24}] generic.max_health base set 180
attribute @s[scores={mastery_health=25}] generic.max_health base set 192.5
attribute @s[scores={mastery_health=26}] generic.max_health base set 205.5
attribute @s[scores={mastery_health=27}] generic.max_health base set 219
attribute @s[scores={mastery_health=28}] generic.max_health base set 233
attribute @s[scores={mastery_health=29}] generic.max_health base set 247.5
attribute @s[scores={mastery_health=30}] generic.max_health base set 262.5

# MODIFIERS
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 20.0
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 22.0
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 24.0
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 26.0
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 28.0
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 30.0
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 30.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 31.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 33
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 35
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 37.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 40.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 44
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 48
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 52.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 57.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 63
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 69
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 75.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 82.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 90
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 98
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 106.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 115.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 125
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 135
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 145.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 156.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 168
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 180
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 192.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 205.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 219
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 233
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 247.5
execute if score $healthshare modifiers matches 1 as @a[tag=playing] at @s run attribute @s generic.max_health base set 262.5

attribute @s[scores={boost_speed=0,mastery_speed=0}] generic.movement_speed base set 0.1
attribute @s[scores={boost_speed=1,mastery_speed=0}] generic.movement_speed base set 0.108
attribute @s[scores={boost_speed=2,mastery_speed=0}] generic.movement_speed base set 0.116
attribute @s[scores={boost_speed=3,mastery_speed=0}] generic.movement_speed base set 0.124
attribute @s[scores={boost_speed=4,mastery_speed=0}] generic.movement_speed base set 0.132
attribute @s[scores={boost_speed=5,mastery_speed=0}] generic.movement_speed base set 0.140

attribute @s[scores={mastery_speed=1}] generic.movement_speed base set 0.1407
attribute @s[scores={mastery_speed=2}] generic.movement_speed base set 0.1414
attribute @s[scores={mastery_speed=3}] generic.movement_speed base set 0.1421
attribute @s[scores={mastery_speed=4}] generic.movement_speed base set 0.1428
attribute @s[scores={mastery_speed=5}] generic.movement_speed base set 0.1435
attribute @s[scores={mastery_speed=6}] generic.movement_speed base set 0.1442
attribute @s[scores={mastery_speed=7}] generic.movement_speed base set 0.1449
attribute @s[scores={mastery_speed=8}] generic.movement_speed base set 0.1456
attribute @s[scores={mastery_speed=9}] generic.movement_speed base set 0.1463
attribute @s[scores={mastery_speed=10}] generic.movement_speed base set 0.147
attribute @s[scores={mastery_speed=11}] generic.movement_speed base set 0.1477
attribute @s[scores={mastery_speed=12}] generic.movement_speed base set 0.1484
attribute @s[scores={mastery_speed=13}] generic.movement_speed base set 0.1491
attribute @s[scores={mastery_speed=14}] generic.movement_speed base set 0.1498
attribute @s[scores={mastery_speed=15}] generic.movement_speed base set 0.1505
attribute @s[scores={mastery_speed=16}] generic.movement_speed base set 0.1512
attribute @s[scores={mastery_speed=17}] generic.movement_speed base set 0.1519
attribute @s[scores={mastery_speed=18}] generic.movement_speed base set 0.1526
attribute @s[scores={mastery_speed=19}] generic.movement_speed base set 0.1533
attribute @s[scores={mastery_speed=20}] generic.movement_speed base set 0.154
attribute @s[scores={mastery_speed=21}] generic.movement_speed base set 0.1547
attribute @s[scores={mastery_speed=22}] generic.movement_speed base set 0.1554
attribute @s[scores={mastery_speed=23}] generic.movement_speed base set 0.1561
attribute @s[scores={mastery_speed=24}] generic.movement_speed base set 0.1568
attribute @s[scores={mastery_speed=25}] generic.movement_speed base set 0.1575
attribute @s[scores={mastery_speed=26}] generic.movement_speed base set 0.1582
attribute @s[scores={mastery_speed=27}] generic.movement_speed base set 0.1589
attribute @s[scores={mastery_speed=28}] generic.movement_speed base set 0.1596
attribute @s[scores={mastery_speed=29}] generic.movement_speed base set 0.1603
attribute @s[scores={mastery_speed=30}] generic.movement_speed base set 0.161

##nightmare
execute if score $difficulty settings matches 6 run attribute @s[tag=!tutorial] generic.max_health base set 2

attribute @s generic.knockback_resistance base set 1.0

attribute @s generic.attack_speed base set 1024