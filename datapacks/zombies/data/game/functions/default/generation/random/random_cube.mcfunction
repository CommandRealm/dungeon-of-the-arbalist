##called to give us a random cube

##Random number
execute store result score $rand random run loot insert 0 1 0 loot random:cubes
function random:reset_chest

##Clearing storage
data remove storage minecraft:generation name


##Setting string
execute if score $rand random matches 0 run data modify storage minecraft:generation name set value "minecraft:cube_mineshaft"
execute if score $rand random matches 1 run data modify storage minecraft:generation name set value "minecraft:cube_air_cave"
execute if score $rand random matches 2 run data modify storage minecraft:generation name set value "minecraft:cube_castle"
execute if score $rand random matches 3 run data modify storage minecraft:generation name set value "minecraft:cube_ice_cave"
execute if score $rand random matches 4 run data modify storage minecraft:generation name set value "minecraft:cube_lightning_bolt"
execute if score $rand random matches 5 run data modify storage minecraft:generation name set value "minecraft:cube_mansion"
execute if score $rand random matches 6 run data modify storage minecraft:generation name set value "minecraft:cube_shore"
execute if score $rand random matches 7 run data modify storage minecraft:generation name set value "minecraft:cube_tree_inside"
execute if score $rand random matches 8 run data modify storage minecraft:generation name set value "minecraft:cube_volcano_inside"

execute if score $rand random matches 9 run data modify storage minecraft:generation name set value "minecraft:cube_water_temple"
execute if score $rand random matches 10 run data modify storage minecraft:generation name set value "minecraft:cube_air_structure"
execute if score $rand random matches 11 run data modify storage minecraft:generation name set value "minecraft:cube_snow_digsite"
execute if score $rand random matches 12 run data modify storage minecraft:generation name set value "minecraft:cube_lush_cave"
execute if score $rand random matches 13 run data modify storage minecraft:generation name set value "minecraft:cube_darkness_cave"
execute if score $rand random matches 14 run data modify storage minecraft:generation name set value "minecraft:cube_volcano_mineshaft"
execute if score $rand random matches 15 run data modify storage minecraft:generation name set value "minecraft:cube_maze"
execute if score $rand random matches 16 run data modify storage minecraft:generation name set value "minecraft:cube_string_lightning"
execute if score $rand random matches 17 run data modify storage minecraft:generation name set value "minecraft:cube_forge"

execute if score $rand random matches 18 run data modify storage minecraft:generation name set value "minecraft:cube_snow_beacons"
execute if score $rand random matches 19 run data modify storage minecraft:generation name set value "minecraft:cube_diorite_castle"
execute if score $rand random matches 20 run data modify storage minecraft:generation name set value "minecraft:cube_tavern"
execute if score $rand random matches 21 run data modify storage minecraft:generation name set value "minecraft:cube_snowy_tree"
execute if score $rand random matches 22 run data modify storage minecraft:generation name set value "minecraft:cube_woodland_mansion_interior"
execute if score $rand random matches 23 run data modify storage minecraft:generation name set value "minecraft:cube_warped_shrooms"
execute if score $rand random matches 24 run data modify storage minecraft:generation name set value "minecraft:cube_blackstone_market"
execute if score $rand random matches 25 run data modify storage minecraft:generation name set value "minecraft:cube_dark_oak_village"
execute if score $rand random matches 26 run data modify storage minecraft:generation name set value "minecraft:cube_desert_outpost"




execute if score $rand random matches 27 run data modify storage minecraft:generation name set value "minecraft:cube_meteor"
execute if score $rand random matches 28 run data modify storage minecraft:generation name set value "minecraft:cube_dirt_pond"
execute if score $rand random matches 29 run data modify storage minecraft:generation name set value "minecraft:cube_shroomlight_tree"
execute if score $rand random matches 30 run data modify storage minecraft:generation name set value "minecraft:cube_air_temple"
execute if score $rand random matches 31 run data modify storage minecraft:generation name set value "minecraft:cube_ice_mineshaft"
execute if score $rand random matches 32 run data modify storage minecraft:generation name set value "minecraft:cube_end_portal"
execute if score $rand random matches 33 run data modify storage minecraft:generation name set value "minecraft:cube_lamp_tree"
execute if score $rand random matches 34 run data modify storage minecraft:generation name set value "minecraft:cube_green_sludge"
execute if score $rand random matches 35 run data modify storage minecraft:generation name set value "minecraft:cube_fluid_lab"

execute if score $rand random matches 36 run data modify storage minecraft:generation name set value "minecraft:cube_crimson_lava_river"
execute if score $rand random matches 37 run data modify storage minecraft:generation name set value "minecraft:cube_floating_waterfall"
execute if score $rand random matches 38 run data modify storage minecraft:generation name set value "minecraft:cube_blackstone_lava_moat"
execute if score $rand random matches 39 run data modify storage minecraft:generation name set value "minecraft:cube_air_city"
execute if score $rand random matches 40 run data modify storage minecraft:generation name set value "minecraft:cube_dangerous_bridges"
execute if score $rand random matches 41 run data modify storage minecraft:generation name set value "minecraft:cube_electric_desert_cave"
execute if score $rand random matches 42 run data modify storage minecraft:generation name set value "minecraft:cube_treehouse"
execute if score $rand random matches 43 run data modify storage minecraft:generation name set value "minecraft:cube_basalt_lava_fall"
execute if score $rand random matches 44 run data modify storage minecraft:generation name set value "minecraft:cube_lived_in_cave"

execute if score $rand random matches 45 run data modify storage minecraft:generation name set value "minecraft:cube_diamond_pillar"
execute if score $rand random matches 46 run data modify storage minecraft:generation name set value "minecraft:cube_library"
execute if score $rand random matches 47 run data modify storage minecraft:generation name set value "minecraft:cube_overgrown_tree"
execute if score $rand random matches 48 run data modify storage minecraft:generation name set value "minecraft:cube_sea_dome"
execute if score $rand random matches 49 run data modify storage minecraft:generation name set value "minecraft:cube_swamp"
execute if score $rand random matches 50 run data modify storage minecraft:generation name set value "minecraft:cube_blue_shrooms"
execute if score $rand random matches 51 run data modify storage minecraft:generation name set value "minecraft:cube_desert_temple"
execute if score $rand random matches 52 run data modify storage minecraft:generation name set value "minecraft:cube_melon_cave"
execute if score $rand random matches 53 run data modify storage minecraft:generation name set value "minecraft:cube_desert_market"





execute if score $rand random matches 54 run data modify storage minecraft:generation name set value "minecraft:cube_fire_castle"
execute if score $rand random matches 55 run data modify storage minecraft:generation name set value "minecraft:cube_water_tunnels"
execute if score $rand random matches 56 run data modify storage minecraft:generation name set value "minecraft:cube_minecart_mineshaft"
execute if score $rand random matches 57 run data modify storage minecraft:generation name set value "minecraft:cube_rundown_floating_city"
execute if score $rand random matches 58 run data modify storage minecraft:generation name set value "minecraft:cube_ice_spikes_outpost"
execute if score $rand random matches 59 run data modify storage minecraft:generation name set value "minecraft:cube_eyes_cave"
execute if score $rand random matches 60 run data modify storage minecraft:generation name set value "minecraft:cube_irrigation_system"
execute if score $rand random matches 61 run data modify storage minecraft:generation name set value "minecraft:cube_graveyard"
execute if score $rand random matches 62 run data modify storage minecraft:generation name set value "minecraft:cube_fallen_desert_bridges"

execute if score $rand random matches 63 run data modify storage minecraft:generation name set value "minecraft:cube_half_nether_half_overworld"
execute if score $rand random matches 64 run data modify storage minecraft:generation name set value "minecraft:cube_leaf_bridges"
execute if score $rand random matches 65 run data modify storage minecraft:generation name set value "minecraft:cube_pile_of_dirt"
execute if score $rand random matches 66 run data modify storage minecraft:generation name set value "minecraft:cube_air_town"
execute if score $rand random matches 67 run data modify storage minecraft:generation name set value "minecraft:cube_ice_ponds"
execute if score $rand random matches 68 run data modify storage minecraft:generation name set value "minecraft:cube_lightning_cave"
execute if score $rand random matches 69 run data modify storage minecraft:generation name set value "minecraft:cube_oasis"
execute if score $rand random matches 70 run data modify storage minecraft:generation name set value "minecraft:cube_nether_spirals"
execute if score $rand random matches 71 run data modify storage minecraft:generation name set value "minecraft:cube_pillager_outpost"

execute if score $rand random matches 72 run data modify storage minecraft:generation name set value "minecraft:cube_tree_interior_garden"
execute if score $rand random matches 73 run data modify storage minecraft:generation name set value "minecraft:cube_warped_tree"
execute if score $rand random matches 74 run data modify storage minecraft:generation name set value "minecraft:cube_blackstone_structure"
execute if score $rand random matches 75 run data modify storage minecraft:generation name set value "minecraft:cube_nether_campsite"
execute if score $rand random matches 76 run data modify storage minecraft:generation name set value "minecraft:cube_cave_with_pond"
execute if score $rand random matches 77 run data modify storage minecraft:generation name set value "minecraft:cube_skull_cave"
execute if score $rand random matches 78 run data modify storage minecraft:generation name set value "minecraft:cube_obsidian_spikes"
execute if score $rand random matches 79 run data modify storage minecraft:generation name set value "minecraft:cube_castle_market"
execute if score $rand random matches 80 run data modify storage minecraft:generation name set value "minecraft:cube_lava_bridges"


execute if score $rand random matches 81 run data modify storage minecraft:generation name set value "minecraft:cube_ruined_portal"
execute if score $rand random matches 82 run data modify storage minecraft:generation name set value "minecraft:cube_podzol_bridge"
execute if score $rand random matches 83 run data modify storage minecraft:generation name set value "minecraft:cube_mesa_quarry"
execute if score $rand random matches 84 run data modify storage minecraft:generation name set value "minecraft:cube_tornado"
execute if score $rand random matches 85 run data modify storage minecraft:generation name set value "minecraft:cube_frozen_dock"
execute if score $rand random matches 86 run data modify storage minecraft:generation name set value "minecraft:cube_electric_crystal"
execute if score $rand random matches 87 run data modify storage minecraft:generation name set value "minecraft:cube_dirt_waterfall"
execute if score $rand random matches 88 run data modify storage minecraft:generation name set value "minecraft:cube_prismarine_shrooms"
execute if score $rand random matches 89 run data modify storage minecraft:generation name set value "minecraft:cube_blackstone_farm"

execute if score $rand random matches 90 run data modify storage minecraft:generation name set value "minecraft:cube_hot_mesa"
execute if score $rand random matches 91 run data modify storage minecraft:generation name set value "minecraft:cube_sewer"
execute if score $rand random matches 92 run data modify storage minecraft:generation name set value "minecraft:cube_overgrown_dirt_cave"
execute if score $rand random matches 93 run data modify storage minecraft:generation name set value "minecraft:cube_air_house"
execute if score $rand random matches 94 run data modify storage minecraft:generation name set value "minecraft:cube_bridge_interior"
execute if score $rand random matches 95 run data modify storage minecraft:generation name set value "minecraft:cube_infinity_room"
execute if score $rand random matches 96 run data modify storage minecraft:generation name set value "minecraft:cube_banners_fence"
execute if score $rand random matches 97 run data modify storage minecraft:generation name set value "minecraft:cube_the_dungeon"
execute if score $rand random matches 98 run data modify storage minecraft:generation name set value "minecraft:cube_structured_lava_fall"

execute if score $rand random matches 99 run data modify storage minecraft:generation name set value "minecraft:cube_colorful_trees"
execute if score $rand random matches 100 run data modify storage minecraft:generation name set value "minecraft:cube_pagoda"
execute if score $rand random matches 101 run data modify storage minecraft:generation name set value "minecraft:cube_emerald_jungle_temple"
execute if score $rand random matches 102 run data modify storage minecraft:generation name set value "minecraft:cube_flowers"
execute if score $rand random matches 103 run data modify storage minecraft:generation name set value "minecraft:cube_magical_lake"
execute if score $rand random matches 104 run data modify storage minecraft:generation name set value "minecraft:cube_mesa_cactus"
execute if score $rand random matches 105 run data modify storage minecraft:generation name set value "minecraft:cube_opera_house"
execute if score $rand random matches 106 run data modify storage minecraft:generation name set value "minecraft:cube_stone_brick_pillars"
execute if score $rand random matches 107 run data modify storage minecraft:generation name set value "minecraft:cube_mycelium_infection"


execute if score $rand random matches 108 run data modify storage minecraft:generation name set value "minecraft:cube_netherbrick_spire"
execute if score $rand random matches 109 run data modify storage minecraft:generation name set value "minecraft:cube_stone_spire"
execute if score $rand random matches 110 run data modify storage minecraft:generation name set value "minecraft:cube_spruce_tree_bridge"
execute if score $rand random matches 111 run data modify storage minecraft:generation name set value "minecraft:cube_tornado_floor"
execute if score $rand random matches 112 run data modify storage minecraft:generation name set value "minecraft:cube_ice_castle_cave"
execute if score $rand random matches 113 run data modify storage minecraft:generation name set value "minecraft:cube_lightning_wall_rivers"
execute if score $rand random matches 114 run data modify storage minecraft:generation name set value "minecraft:cube_square_tree"
execute if score $rand random matches 115 run data modify storage minecraft:generation name set value "minecraft:cube_prison_of_darkness"
execute if score $rand random matches 116 run data modify storage minecraft:generation name set value "minecraft:cube_spin_cave"

execute if score $rand random matches 117 run data modify storage minecraft:generation name set value "minecraft:cube_blackstone_spire"
execute if score $rand random matches 118 run data modify storage minecraft:generation name set value "minecraft:cube_cave_docks_water"
execute if score $rand random matches 119 run data modify storage minecraft:generation name set value "minecraft:cube_geode_cave"
execute if score $rand random matches 120 run data modify storage minecraft:generation name set value "minecraft:cube_air_crystals"
execute if score $rand random matches 121 run data modify storage minecraft:generation name set value "minecraft:cube_dark_outpost"
execute if score $rand random matches 122 run data modify storage minecraft:generation name set value "minecraft:cube_lightning_waterfall_crystal"
execute if score $rand random matches 123 run data modify storage minecraft:generation name set value "minecraft:cube_two_bridges"
execute if score $rand random matches 124 run data modify storage minecraft:generation name set value "minecraft:cube_green_sword"
execute if score $rand random matches 125 run data modify storage minecraft:generation name set value "minecraft:cube_iron_wood_cave"

execute if score $rand random matches 126 run data modify storage minecraft:generation name set value "minecraft:cube_dead_tree"
execute if score $rand random matches 127 run data modify storage minecraft:generation name set value "minecraft:cube_crazy_epic_nether"
execute if score $rand random matches 128 run data modify storage minecraft:generation name set value "minecraft:cube_basalt_store"
execute if score $rand random matches 129 run data modify storage minecraft:generation name set value "minecraft:cube_arbalist_house"
execute if score $rand random matches 130 run data modify storage minecraft:generation name set value "minecraft:cube_acacia_mushroom"
execute if score $rand random matches 131 run data modify storage minecraft:generation name set value "minecraft:cube_big_blue_mushroom"
execute if score $rand random matches 132 run data modify storage minecraft:generation name set value "minecraft:cube_desert_cave_trees"
execute if score $rand random matches 133 run data modify storage minecraft:generation name set value "minecraft:cube_quartz_spikes"
execute if score $rand random matches 134 run data modify storage minecraft:generation name set value "minecraft:cube_maze_of_doom"




execute if score $rand random matches 135 run data modify storage minecraft:generation name set value "minecraft:cube_snow_layer_lava"
execute if score $rand random matches 136 run data modify storage minecraft:generation name set value "minecraft:cube_spike_cobblestone_water"
execute if score $rand random matches 137 run data modify storage minecraft:generation name set value "minecraft:cube_temple_in_cave"
execute if score $rand random matches 138 run data modify storage minecraft:generation name set value "minecraft:cube_air_pillars"
execute if score $rand random matches 139 run data modify storage minecraft:generation name set value "minecraft:cube_ice_interior_spruce"
execute if score $rand random matches 140 run data modify storage minecraft:generation name set value "minecraft:cube_nether_lightning"
execute if score $rand random matches 141 run data modify storage minecraft:generation name set value "minecraft:cube_crazy_leaves"
execute if score $rand random matches 142 run data modify storage minecraft:generation name set value "minecraft:cube_darkness_tunnels"
execute if score $rand random matches 143 run data modify storage minecraft:generation name set value "minecraft:cube_warped_bridge"

execute if score $rand random matches 144 run data modify storage minecraft:generation name set value "minecraft:cube_lava_leaves"
execute if score $rand random matches 145 run data modify storage minecraft:generation name set value "minecraft:cube_water_village"
execute if score $rand random matches 146 run data modify storage minecraft:generation name set value "minecraft:cube_earth_banners"
execute if score $rand random matches 147 run data modify storage minecraft:generation name set value "minecraft:cube_library_colors"
execute if score $rand random matches 148 run data modify storage minecraft:generation name set value "minecraft:cube_ice_flag"
execute if score $rand random matches 149 run data modify storage minecraft:generation name set value "minecraft:cube_lightning_fog"
execute if score $rand random matches 150 run data modify storage minecraft:generation name set value "minecraft:cube_lake_leaves"
execute if score $rand random matches 151 run data modify storage minecraft:generation name set value "minecraft:cube_diamond_cave"
execute if score $rand random matches 152 run data modify storage minecraft:generation name set value "minecraft:cube_meteor_mining"

execute if score $rand random matches 153 run data modify storage minecraft:generation name set value "minecraft:cube_complicated_maze"
execute if score $rand random matches 154 run data modify storage minecraft:generation name set value "minecraft:cube_doors_quartz"
execute if score $rand random matches 155 run data modify storage minecraft:generation name set value "minecraft:cube_ice_temple"
execute if score $rand random matches 156 run data modify storage minecraft:generation name set value "minecraft:cube_wild_west"
execute if score $rand random matches 157 run data modify storage minecraft:generation name set value "minecraft:cube_cobblestone_staircase"
execute if score $rand random matches 158 run data modify storage minecraft:generation name set value "minecraft:cube_normal_library"
execute if score $rand random matches 159 run data modify storage minecraft:generation name set value "minecraft:cube_blue_town"
execute if score $rand random matches 160 run data modify storage minecraft:generation name set value "minecraft:cube_nether_shroomlight"
execute if score $rand random matches 161 run data modify storage minecraft:generation name set value "minecraft:cube_birch_tree"

# newest 27

execute if score $rand random matches 162 run data modify storage minecraft:generation name set value "minecraft:cube_amethyst_cave"
execute if score $rand random matches 163 run data modify storage minecraft:generation name set value "minecraft:cube_best_dota_cube"
execute if score $rand random matches 164 run data modify storage minecraft:generation name set value "minecraft:cube_sakura_tree"
execute if score $rand random matches 165 run data modify storage minecraft:generation name set value "minecraft:cube_jellyfish"
execute if score $rand random matches 166 run data modify storage minecraft:generation name set value "minecraft:cube_reef_monument"
execute if score $rand random matches 167 run data modify storage minecraft:generation name set value "minecraft:cube_deep_dark_arches"
execute if score $rand random matches 168 run data modify storage minecraft:generation name set value "minecraft:cube_small_crimson_cave"
execute if score $rand random matches 169 run data modify storage minecraft:generation name set value "minecraft:cube_fire_temple"
execute if score $rand random matches 170 run data modify storage minecraft:generation name set value "minecraft:cube_mesa_market"

execute if score $rand random matches 171 run data modify storage minecraft:generation name set value "minecraft:cube_science_lab"
execute if score $rand random matches 172 run data modify storage minecraft:generation name set value "minecraft:cube_dark_laser"
execute if score $rand random matches 173 run data modify storage minecraft:generation name set value "minecraft:cube_colosseum"
execute if score $rand random matches 174 run data modify storage minecraft:generation name set value "minecraft:cube_penguin"
execute if score $rand random matches 175 run data modify storage minecraft:generation name set value "minecraft:cube_skating_rink"
execute if score $rand random matches 176 run data modify storage minecraft:generation name set value "minecraft:cube_night_stars"
execute if score $rand random matches 177 run data modify storage minecraft:generation name set value "minecraft:cube_windmills"
execute if score $rand random matches 178 run data modify storage minecraft:generation name set value "minecraft:cube_air_balloon"
execute if score $rand random matches 179 run data modify storage minecraft:generation name set value "minecraft:cube_bakery"

execute if score $rand random matches 180 run data modify storage minecraft:generation name set value "minecraft:cube_copper_mine"
execute if score $rand random matches 181 run data modify storage minecraft:generation name set value "minecraft:cube_medieval_punk"
execute if score $rand random matches 182 run data modify storage minecraft:generation name set value "minecraft:cube_pink_land_but_good"
execute if score $rand random matches 183 run data modify storage minecraft:generation name set value "minecraft:cube_smh_captonium"
execute if score $rand random matches 184 run data modify storage minecraft:generation name set value "minecraft:cube_deep_dark_temple"
execute if score $rand random matches 185 run data modify storage minecraft:generation name set value "minecraft:cube_end_laser"
execute if score $rand random matches 186 run data modify storage minecraft:generation name set value "minecraft:cube_forest_stronghold"
execute if score $rand random matches 187 run data modify storage minecraft:generation name set value "minecraft:cube_old_forest_essence"
execute if score $rand random matches 188 run data modify storage minecraft:generation name set value "minecraft:cube_better_stronghold"

