# called to check our count and see if we need to rank up or not

execute store result score $calculate calculate run clear @s red_dye{stat_boost:1b} 0
execute if score @s mastery_health matches ..29 if score @s boost_health matches 5.. if score $calculate calculate matches 3.. run function game:mechanics/stat_boosts/use_health

execute store result score $calculate calculate run clear @s orange_dye{stat_boost:1b} 0
execute if score @s mastery_quiver matches ..29 if score @s boost_quiver matches 5.. if score $calculate calculate matches 3.. run function game:mechanics/stat_boosts/use_quiver

execute store result score $calculate calculate run clear @s yellow_dye{stat_boost:1b} 0
execute if score @s mastery_treasure matches ..29 if score @s boost_treasure matches 5.. if score $calculate calculate matches 3.. run function game:mechanics/stat_boosts/use_looting

execute store result score $calculate calculate run clear @s lime_dye{stat_boost:1b} 0
execute if score @s mastery_revive matches ..29 if score @s boost_revive matches 5.. if score $calculate calculate matches 3.. run function game:mechanics/stat_boosts/use_revive

execute store result score $calculate calculate run clear @s light_blue_dye{stat_boost:1b} 0
execute if score @s mastery_speed matches ..29 if score @s boost_speed matches 5.. if score $calculate calculate matches 3.. run function game:mechanics/stat_boosts/use_speed

execute store result score $calculate calculate run clear @s purple_dye{stat_boost:1b} 0
execute if score @s mastery_damage matches ..29 if score @s boost_damage matches 5.. if score $calculate calculate matches 3.. run function game:mechanics/stat_boosts/use_damage
