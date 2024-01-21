##called to give us our crossbow

##If the crossbow is in our offhand, reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]},tag=!trial_four_in_the_quiver] run function game:mechanics/reload



##clear
clear @s crossbow


##getting crossbows
function game:mechanics/give_crossbow_item

# calculating dps
function game:mechanics/calculate_crossbow_dps

##giving it back after calculating DPS
function game:mechanics/give_crossbow_item



##removing tag
tag @s remove temporary_tag

##killing dropped items
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",Count:1b}},distance=..15,tag=!shop_item]



###Base element colors
##Fire
#Hex #f1390e
#Dec 15808782
##Water
#Hex #0e8ef1
#Dec 954097
##Earth
#Hex #b27565
#Dec 11695461
##Air
#Hex #d6d6d6
#Dec 14079702
##Ice
#Hex #6fe6ff
#Dec 7333631
##Lightning
#Hex #f0d44f
#Dec 15782991
##Nature 
#Hex #17b00c
#Dec 1552396
##Darkness
#Hex #3e2e51
#Dec 4075089
##Metal 
#Hex #544c4c
#Dec 5524556



###Specific crossbow colors

##Steam
#Hex #b0b0b0
#Dec 11579568

##Waterfall
#Hex #26dbcc
#Dec 2546636

##Basalt
#Hex #3d3e4c
#Dec 4013644

##Conduction
#Hex #92906b
#Dec 9605227

##Snow
#Hex #bdfbff
#Dec 12450815

##Combustion
#Hex #ae6a6d
#Dec 11430509

##Uranium 
#Hex #38e310
#Dec 3728144

##Cumulonimbus
#Hex #586060
#Dec 5791840

##Erratics
#Hex #4c9490
#Dec 5018768

##Obsidian
#Hex #3b2754
#Dec 3876692

##Hurricane
#Hex #7bc7bf
#Dec 8112063

##Golden
#Hex #fdf55f
#Dec 16643423

##Wildfire
#Hex #b6800b
#Dec 11960331

##Asteroid
#Hex #787369
#Dec 7893865

##Antumbra
#Hex #364034
#Dec 3555380

##Debris
#Hex #c8c8c8
#Dec 13158600

##Superconductor
#Hex #92947c
#Dec 9606268

##Frostbite
#Hex #108c88
#Dec 1084552

##Avalanche
#Hex #f9f9f9
#Dec 16382457

##Cloud
#Hex #feeefa
#Dec 16707322

##Thunderstorm
#Hex #454536
#Dec 4539702

##Iceberg
#Hex #89e8de
#Dec 9038046

##Spontaneous
#Hex #7af08b
#Dec 8056971

##Electrostatic
#Hex #7cd8ff
#Dec 8182015

##Grounded
#Hex #7e6339
#Dec 8282937

##Niveous
#Hex #618782
#Dec 6391682

##Igneous
#Hex #b74d13
#Dec 12012819

##Deluge
#Hex #0024ff
#Dec 9471

##Blizzard
#Hex #bdd4df
#Dec 12440799

##Plasma
#Hex #ce00e6
#Dec 13500646

##Landslide
#Hex #784900
#Dec 7883008

##Fog
#Hex #c1ffed
#Dec 12713965

##Netherite
#Hex #4c4143
#Dec 4997443

##Antimatter
#Hex #46067d
#Dec 4589181

##Radioactive
#Hex #4cab1d
#Dec 5024541

