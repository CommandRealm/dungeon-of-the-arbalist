##called to give us our crossbow

##If the crossbow is in our offhand, reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] run function game:mechanics/reload



##clear
clear @s crossbow

##getting crossbows
execute if entity @s[scores={crossbow_id=0},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/default
execute if entity @s[scores={crossbow_id=1},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/fire
execute if entity @s[scores={crossbow_id=2},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/water
execute if entity @s[scores={crossbow_id=3},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/earth
execute if entity @s[scores={crossbow_id=4},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/air
execute if entity @s[scores={crossbow_id=5},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/ice
execute if entity @s[scores={crossbow_id=6},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/lightning
execute if entity @s[scores={crossbow_id=7},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/nature
execute if entity @s[scores={crossbow_id=8},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/darkness
execute if entity @s[scores={crossbow_id=9},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/metal

execute if entity @s[scores={crossbow_id=10},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/magma
execute if entity @s[scores={crossbow_id=11},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/rain
execute if entity @s[scores={crossbow_id=12},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/boulder
execute if entity @s[scores={crossbow_id=13},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/tornado
execute if entity @s[scores={crossbow_id=14},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/frost
execute if entity @s[scores={crossbow_id=15},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/electric
execute if entity @s[scores={crossbow_id=16},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/wild
execute if entity @s[scores={crossbow_id=17},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/shadow
execute if entity @s[scores={crossbow_id=18},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/iron

execute if entity @s[scores={crossbow_id=19},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/steam
execute if entity @s[scores={crossbow_id=20},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/waterfall
execute if entity @s[scores={crossbow_id=21},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/basalt
execute if entity @s[scores={crossbow_id=22},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/conduction
execute if entity @s[scores={crossbow_id=23},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/snow
execute if entity @s[scores={crossbow_id=24},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/combustion
execute if entity @s[scores={crossbow_id=25},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/uranium
execute if entity @s[scores={crossbow_id=26},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/cumulonimbus
execute if entity @s[scores={crossbow_id=27},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/erratics

execute if entity @s[scores={crossbow_id=28},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/volcanic
execute if entity @s[scores={crossbow_id=29},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/wave
execute if entity @s[scores={crossbow_id=30},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/cavern
execute if entity @s[scores={crossbow_id=31},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/atmosphere
execute if entity @s[scores={crossbow_id=32},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/glacier
execute if entity @s[scores={crossbow_id=33},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/voltaic
execute if entity @s[scores={crossbow_id=34},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/life
execute if entity @s[scores={crossbow_id=35},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/void
execute if entity @s[scores={crossbow_id=36},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/alloy

execute if entity @s[scores={crossbow_id=37},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/obsidian
execute if entity @s[scores={crossbow_id=38},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/hurricane
execute if entity @s[scores={crossbow_id=39},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/golden
execute if entity @s[scores={crossbow_id=40},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/wildfire
execute if entity @s[scores={crossbow_id=41},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/asteroid
execute if entity @s[scores={crossbow_id=42},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/antumbra
execute if entity @s[scores={crossbow_id=43},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/debris
execute if entity @s[scores={crossbow_id=44},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/superconductor
execute if entity @s[scores={crossbow_id=45},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/frostbite

execute if entity @s[scores={crossbow_id=46},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/avalanche
execute if entity @s[scores={crossbow_id=47},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/cloud
execute if entity @s[scores={crossbow_id=48},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/thunderstorm
execute if entity @s[scores={crossbow_id=49},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/iceberg
execute if entity @s[scores={crossbow_id=50},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/spontaneous
execute if entity @s[scores={crossbow_id=51},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/electrostatic
execute if entity @s[scores={crossbow_id=52},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/grounded
execute if entity @s[scores={crossbow_id=53},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/niveous
execute if entity @s[scores={crossbow_id=54},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/igneous

execute if entity @s[scores={crossbow_id=55},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/deluge
execute if entity @s[scores={crossbow_id=56},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/blizzard
execute if entity @s[scores={crossbow_id=57},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/plasma
execute if entity @s[scores={crossbow_id=58},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/landslide
execute if entity @s[scores={crossbow_id=59},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/fog
execute if entity @s[scores={crossbow_id=60},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/netherite
execute if entity @s[scores={crossbow_id=61},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/antimatter
execute if entity @s[scores={crossbow_id=62},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/radioactive

execute if entity @s[scores={crossbow_id=63},tag=!temporary_tag] run loot replace entity @s hotbar.0 loot game:crossbow/inferno

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

