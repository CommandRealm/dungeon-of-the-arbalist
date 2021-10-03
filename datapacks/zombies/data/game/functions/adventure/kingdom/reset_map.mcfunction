##Called to reset the castle map

##Clearing entities
tag @e[tag=boss] add die_between_games
tp @e[tag=die_between_games] 0 0 0
kill @e[tag=die_between_games]
kill @e[type=item,x=3000,y=66,z=0,distance=..500]



##Doors
clone 3068 47 78 3092 61 85 3068 69 78
clone 3015 52 34 3015 56 36 3045 80 36
clone 3016 42 -7 3020 47 -5 3021 75 21
clone 3038 51 20 3041 55 23 3038 91 20
clone 2956 79 133 2967 88 142 3017 76 98
clone 3033 49 152 3035 54 155 3033 69 152
clone 3135 50 109 3135 53 111 3108 79 149
clone 3094 76 182 3092 83 184 3088 89 182
clone 3104 80 184 3106 84 187 3104 89 187
clone 3057 52 106 3059 57 112 3057 70 106
clone 3022 72 171 3025 76 173 3033 91 169
clone 3026 35 97 3030 48 105 3067 88 153
clone 3012 81 195 3013 86 197 3011 91 193
clone 3104 53 98 3106 56 99 3104 68 98
clone 3144 49 104 3145 53 105 3144 70 104
clone 3160 52 112 3160 57 114 3160 72 112
clone 2998 78 78 2998 78 78 2998 81 78
clone 3095 35 177 3096 39 180 3095 45 177
clone 3128 50 142 3130 53 145 3128 70 142
clone 3236 63 189 3242 68 195 3157 71 190
clone 3170 33 64 3180 47 69 3077 68 126
clone 3158 51 167 3162 62 169 3158 71 167
setblock 2998 82 77 lever
function game:enemy/cpt_king/reset

##coffins
fill 3168 72 170 3171 74 202 air
fill 3150 72 170 3149 74 202 air
clone 3203 56 172 3206 57 174 3170 72 170
clone 3203 56 172 3206 57 174 3170 72 175
clone 3203 56 172 3206 57 174 3170 72 180
clone 3203 56 172 3206 57 174 3170 72 185
clone 3203 56 172 3206 57 174 3170 72 190
clone 3203 56 172 3206 57 174 3170 72 195
clone 3203 56 172 3206 57 174 3170 72 200

fill 3152 72 170 3151 73 202 air
clone 3208 56 172 3211 57 174 3147 72 170
clone 3208 56 172 3211 57 174 3147 72 175
clone 3208 56 172 3211 57 174 3147 72 180
clone 3208 56 172 3211 57 174 3147 72 185
clone 3208 56 172 3211 57 174 3147 72 190
clone 3208 56 172 3211 57 174 3147 72 195
clone 3208 56 172 3211 57 174 3147 72 200
##Summons
execute positioned 3146 68 13 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3147 68 9 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3153 66 15 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3151 66 20 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3139 69 59 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3132 68 55 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3128 68 62 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3133 68 61 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3132 70 68 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3139 70 71 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3138 70 75 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3135 70 74 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3130 69 79 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3123 69 75 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3115 69 76 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3111 69 79 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3108 69 72 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3112 68 64 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3110 69 60 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3108 69 56 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3115 68 58 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3116 68 54 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3116 67 49 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3120 67 47 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3126 68 51 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3115 67 44 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3120 67 39 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3114 66 34 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3150 69 2 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3144 69 5 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3154 68 6 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3151 66 26 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3133 66 10 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3134 67 5 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3138 68 1 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3137 67 10 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3137 65 14 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3126 65 24 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3130 67 27 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3111 66 32 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3108 66 29 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3109 66 18 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3107 66 11 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3105 66 6 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3099 65 2 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3110 65 1 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3116 66 26 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3122 66 31 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3110 67 40 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3100 67 44 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3102 68 48 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3097 67 41 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3093 67 41 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3095 68 48 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3097 69 55 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3105 69 53 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3097 69 59 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3094 71 64 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3090 70 68 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3084 70 65 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3085 70 61 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3087 69 55 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3086 69 51 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3086 68 45 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3084 68 41 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3077 69 40 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3070 69 37 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3066 69 33 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3062 69 28 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3057 69 31 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3067 69 42 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3062 71 41 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3061 73 45 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3060 75 48 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3060 76 51 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3057 77 49 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3056 79 45 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3054 80 42 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3053 80 35 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3050 80 37 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3047 80 38 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3065 69 52 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3066 71 57 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3056 69 58 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3061 69 63 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3058 71 74 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3063 71 77 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3069 69 75 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3076 70 77 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3082 70 78 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3085 70 69 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3088 69 76 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3094 70 74 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3100 69 69 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3121 68 61 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3126 66 9 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3123 66 14 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3127 65 20 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3129 65 17 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3137 65 20 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3137 66 26 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3142 66 28 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3146 66 31 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3151 66 32 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3149 67 39 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3153 66 35 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3155 66 41 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3158 67 46 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3154 68 48 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3158 68 27 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3165 68 28 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3161 69 37 run function game:adventure/create/wave_3_spawnpoint
execute positioned 3157 69 33 run function game:adventure/create/wave_3_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1] add area_1
tag @e[type=marker,tag=zombie_spawnpoint] add unlocked

execute positioned 3035 78 25 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3038 80 38 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3032 80 37 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3035 77 30 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3033 76 31 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3037 78 23 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3038 77 33 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3037 76 36 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3036 74 42 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3038 73 48 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3038 70 52 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3034 71 43 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3027 70 54 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3033 68 59 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3030 71 61 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3032 73 63 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3027 71 66 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3029 80 42 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3026 80 46 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3023 80 49 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3024 80 53 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3019 81 62 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3017 81 66 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3016 80 69 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3017 80 73 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3012 80 74 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3010 80 78 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3006 80 78 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3002 80 80 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3000 80 75 run function game:adventure/create/wave_5_spawnpoint
execute positioned 2994 80 76 run function game:adventure/create/wave_5_spawnpoint
execute positioned 2993 80 81 run function game:adventure/create/wave_5_spawnpoint
execute positioned 2999 81 67 run function game:adventure/create/wave_5_spawnpoint
execute positioned 2995 81 70 run function game:adventure/create/wave_5_spawnpoint
execute positioned 2994 81 66 run function game:adventure/create/wave_5_spawnpoint
execute positioned 2995 81 58 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3002 81 62 run function game:adventure/create/wave_5_spawnpoint
execute positioned 2999 81 59 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3006 82 61 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3008 82 63 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3015 81 61 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3017 74 78 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3019 77 83 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3022 76 92 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3018 76 92 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3022 77 99 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3027 77 97 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3028 79 85 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3032 79 83 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3028 79 79 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3025 78 77 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3020 79 75 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3023 74 81 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3027 74 79 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3029 72 73 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3025 72 73 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3020 75 72 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3018 76 70 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3015 75 63 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3012 75 70 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3010 76 60 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3005 78 59 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3007 77 49 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3006 76 45 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3007 76 42 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3008 76 40 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3010 75 42 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3010 75 44 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3009 75 46 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3011 74 45 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3013 73 46 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3013 73 53 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3013 75 58 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3019 72 57 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3023 71 61 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3022 71 54 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3018 72 51 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3020 72 47 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3017 72 44 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3011 75 38 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3013 75 36 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3013 77 33 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3014 78 30 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3015 76 29 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3019 75 27 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3022 75 24 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3021 74 31 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3027 73 34 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3028 72 36 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3031 74 33 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3019 90 56 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3022 93 53 run function game:adventure/create/wave_5_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2] add area_2

execute positioned 3043 92 21 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3021 77 19 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3023 79 16 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3027 82 13 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3024 84 9 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3020 85 14 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3022 86 20 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3027 87 23 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3031 90 19 run function game:adventure/create/wave_5_spawnpoint
execute positioned 3034 91 17 run function game:adventure/create/wave_5_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a] add area_2a

execute positioned 3040 92 28 run function game:adventure/create/wave_5_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b] add area_2b

execute positioned 3018 77 110 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3025 77 110 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3023 77 114 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3019 74 119 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3026 74 119 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3023 71 122 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3022 70 125 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3028 70 128 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3031 70 123 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3016 70 125 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3016 70 130 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3022 70 134 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3016 70 135 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3022 70 139 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3025 70 140 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3024 70 147 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3027 70 142 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3017 70 143 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3019 70 149 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3016 70 154 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3018 70 157 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3023 71 159 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3024 70 161 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3027 70 161 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3027 70 155 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3029 70 157 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3022 75 119 run function game:adventure/create/wave_6_spawnpoint
execute positioned 3014 75 161 run function game:adventure/create/wave_6_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3] add area_3

execute positioned 3039 70 150 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3039 70 141 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3039 70 135 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3044 71 134 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3050 70 132 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3054 70 134 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3058 70 136 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3058 70 141 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3056 70 148 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3046 70 151 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3048 70 158 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3040 70 158 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3041 71 162 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3047 70 143 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3047 71 165 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3045 70 167 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3038 70 172 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3051 72 173 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3051 71 168 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3058 70 154 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3056 70 152 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3041 71 162 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3066 70 132 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3066 70 140 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3073 70 140 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3079 70 143 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3078 70 135 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3070 70 146 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3070 70 151 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3067 70 155 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3073 70 158 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3066 70 166 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3070 70 173 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3079 70 175 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3084 70 169 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3082 70 165 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3083 70 160 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3088 70 152 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3092 70 147 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3094 70 150 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3099 70 154 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3105 70 155 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3109 70 150 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3107 70 143 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3109 70 158 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3106 70 166 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3088 70 139 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3087 70 134 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3098 70 140 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3094 73 133 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3092 75 131 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3090 78 133 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3094 79 132 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3098 79 133 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3104 79 134 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3110 79 136 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3117 79 134 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3115 79 138 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3104 79 140 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3101 79 142 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3104 79 151 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3101 79 155 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3103 79 165 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3100 79 171 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3112 79 165 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3071 73 133 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3071 76 131 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3074 78 133 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3067 79 132 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3061 79 131 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3061 79 139 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3060 79 148 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3062 79 156 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3065 79 161 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3063 79 163 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3059 79 161 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3060 79 171 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3065 79 172 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3061 79 131 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3095 70 164 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3090 70 171 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3094 70 177 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3089 73 165 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3088 79 173 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3092 79 174 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3096 83 175 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3084 81 174 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3077 87 174 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3102 87 173 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3073 61 175 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3078 61 177 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3073 61 181 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3070 61 184 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3078 61 185 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3081 61 184 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3082 61 193 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3077 61 192 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3073 61 193 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3068 61 194 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3103 90 168 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3098 90 169 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3093 90 168 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3084 90 169 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3072 90 170 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3074 90 167 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3075 90 164 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3072 90 159 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3075 90 154 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3077 90 147 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3075 90 140 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3082 90 142 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3087 90 136 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3094 90 138 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3097 90 142 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3091 90 144 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3085 90 147 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3084 90 153 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3086 90 161 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3090 90 156 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3095 90 150 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3104 90 153 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3103 90 146 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3105 90 162 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3095 90 161 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3085 90 179 run function game:adventure/create/wave_7_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5] add area_5



execute positioned 3112 79 150 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3117 79 147 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3116 79 154 run function game:adventure/create/wave_7_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b] add area_5b

execute positioned 3083 90 197 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3083 90 191 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3083 90 186 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3086 90 187 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3089 90 187 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3094 90 185 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3094 90 185 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3090 91 202 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3092 90 199 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3095 90 200 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3099 90 198 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3093 90 194 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3095 90 192 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3094 90 185 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3098 90 188 run function game:adventure/create/wave_7_spawnpoint
execute positioned 3102 90 189 run function game:adventure/create/wave_7_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d] add area_5d

execute positioned 3081 70 90 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3083 70 95 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3077 70 96 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3071 70 95 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3072 70 88 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3064 71 100 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3066 71 105 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3063 70 111 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3066 71 116 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3073 70 117 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3078 70 113 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3082 70 115 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3080 70 122 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3086 70 123 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3086 70 115 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3082 70 107 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3079 70 102 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3088 69 99 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3089 70 91 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3095 69 99 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3094 69 102 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3091 69 107 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3096 69 109 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3100 69 100 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3100 69 100 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3102 69 109 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3101 70 114 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3106 71 105 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3110 71 107 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3112 71 102 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3117 71 105 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3115 71 108 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3112 72 114 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3108 70 114 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3122 71 107 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3127 71 111 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3122 71 112 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3123 71 115 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3131 72 107 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3128 71 102 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3132 71 99 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3140 71 109 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3145 71 107 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3151 72 105 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3155 72 100 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3160 72 97 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3152 72 110 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3157 73 114 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3143 71 119 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3145 72 124 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3148 72 129 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3154 72 132 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3158 72 136 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3162 73 140 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3167 73 138 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3150 71 146 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3149 72 155 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3144 72 159 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3148 72 165 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3156 72 145 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3158 72 152 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3155 72 157 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3154 72 164 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3169 73 122 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3173 73 127 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3171 73 134 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3174 73 138 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3177 73 140 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3166 73 142 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3167 73 148 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 72 149 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3163 73 148 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3161 73 143 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3132 70 142 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3161 72 163 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3167 72 164 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 72 164 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3171 72 157 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6] add area_6


execute positioned 3163 73 114 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3161 73 117 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3162 73 110 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3168 73 110 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3163 80 114 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3169 80 111 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3166 83 111 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3162 91 112 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3165 91 110 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a] add area_6a

execute positioned 3107 69 96 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3103 69 92 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b] add area_6b

execute positioned 3141 71 102 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3143 72 100 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3137 72 100 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b,tag=!area_6c] add area_6c

execute positioned 3054 77 108 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3056 71 105 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3053 71 108 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3057 71 112 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b,tag=!area_6c,tag=!area_6d] add area_6d

execute positioned 3156 56 244 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3150 56 245 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3148 55 249 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3148 56 253 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3143 56 252 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3144 55 256 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3145 55 267 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3148 56 272 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3153 56 277 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3156 56 275 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3166 56 274 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3172 56 273 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3174 56 268 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3176 55 259 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3176 56 254 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3173 56 248 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3167 56 248 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3164 55 246 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3160 55 244 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3154 54 252 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3152 54 257 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3149 54 262 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3153 54 267 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3159 54 272 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3167 54 268 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3171 54 261 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3169 54 257 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3164 54 253 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3163 53 264 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3156 53 261 run function game:adventure/create/wave_13_spawnpoint
execute positioned 3162 53 258 run function game:adventure/create/wave_13_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b,tag=!area_6c,tag=!area_6d,tag=!area_7] add area_7

execute positioned 3110 89 188 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3037 90 143 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3032 90 148 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3027 90 155 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3024 90 157 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3020 90 146 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3026 90 145 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3023 90 139 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3021 90 135 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3025 90 131 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3023 90 124 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3024 90 121 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3030 90 121 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3034 90 128 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3038 90 129 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3043 90 133 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3039 90 136 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3034 90 138 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3030 90 134 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3032 90 156 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3037 90 157 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3041 90 157 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3045 90 153 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3046 90 148 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3050 90 149 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3050 90 140 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3044 90 137 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3052 91 132 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3056 91 134 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3046 90 127 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3041 90 122 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3035 89 112 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3030 90 106 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3033 90 102 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3029 90 99 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3035 90 93 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3026 91 115 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3018 91 119 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3016 91 126 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3011 91 134 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3010 91 144 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3015 91 150 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3017 91 158 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3021 91 165 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3029 91 163 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3037 91 165 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3050 91 163 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3053 91 153 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3057 91 149 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3058 91 141 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3061 91 137 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3066 91 137 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3063 91 131 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3067 91 127 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3076 92 130 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3079 92 126 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3083 92 127 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3090 91 129 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3096 90 126 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3101 90 127 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3105 90 132 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3111 89 133 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3116 89 135 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3120 89 131 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3118 89 141 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3118 89 147 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3122 88 150 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3124 88 154 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3127 88 158 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3133 88 156 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3123 88 163 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3127 88 164 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3135 88 167 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3136 88 173 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3133 89 178 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3130 87 172 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3124 88 169 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3125 88 174 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3118 89 173 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3127 89 182 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3121 89 182 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3116 89 180 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3114 89 186 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3111 89 184 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b,tag=!area_6c,tag=!area_6d,tag=!area_7,tag=!area_8] add area_8

execute positioned 3064 90 153 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3063 90 160 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3065 90 161 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3061 90 165 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3065 90 171 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3055 92 176 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3062 90 176 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3052 92 179 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3047 92 177 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3051 93 186 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3046 93 190 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3052 92 191 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3053 92 199 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3051 93 205 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3049 94 209 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3043 93 211 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3042 93 202 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3041 92 196 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3039 92 191 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3043 92 182 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3052 92 170 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3042 92 171 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3037 92 178 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3032 92 182 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3032 92 187 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3034 92 193 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3033 93 199 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3033 94 205 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3034 94 210 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3026 93 211 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3018 94 208 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3016 93 202 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3024 93 205 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3018 92 198 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3019 93 194 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3014 92 194 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3023 93 183 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3015 92 185 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3015 92 178 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3011 92 174 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3018 92 171 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3026 92 178 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3023 92 171 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3032 92 172 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b,tag=!area_6c,tag=!area_6d,tag=!area_7,tag=!area_8,tag=!area_9] add area_9

execute positioned 2990 92 183 run function game:adventure/create/wave_9_spawnpoint
execute positioned 2993 92 181 run function game:adventure/create/wave_9_spawnpoint
execute positioned 2997 92 181 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3004 92 182 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3005 92 185 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3005 92 189 run function game:adventure/create/wave_9_spawnpoint
execute positioned 2999 92 191 run function game:adventure/create/wave_9_spawnpoint
execute positioned 2999 93 194 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3005 92 198 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3001 92 201 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3004 92 204 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3008 92 193 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b,tag=!area_6c,tag=!area_6d,tag=!area_7,tag=!area_8,tag=!area_9,tag=!area_9a] add area_9a


execute positioned 3052 52 163 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3052 49 172 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3050 47 178 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3052 46 183 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3059 45 185 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3052 48 191 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3062 45 179 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3068 44 182 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3060 45 170 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3063 46 153 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3068 47 149 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3071 48 142 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3077 46 144 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3078 49 138 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3083 49 136 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3084 49 140 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3084 46 145 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3081 45 154 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3087 45 157 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3092 46 156 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3085 44 160 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3078 43 162 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3082 43 169 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3077 44 174 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3075 44 180 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3049 51 201 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3055 49 204 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3063 49 207 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3070 46 206 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3076 47 205 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3085 51 208 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3093 51 204 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3085 46 202 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3087 45 194 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3091 46 194 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3091 45 186 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3090 44 181 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3091 44 177 run function game:adventure/create/wave_11_spawnpoint
execute positioned 3093 44 167 run function game:adventure/create/wave_11_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b,tag=!area_6c,tag=!area_6d,tag=!area_7,tag=!area_8,tag=!area_9,tag=!area_9a,tag=!area_10] add area_10


execute positioned 3148 73 171 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3148 73 176 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3148 73 181 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3148 73 186 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3148 73 191 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3148 73 196 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3148 73 201 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 73 201 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 73 196 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 73 191 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 73 186 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 73 181 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 73 176 run function game:adventure/create/wave_9_spawnpoint
execute positioned 3172 73 171 run function game:adventure/create/wave_9_spawnpoint
tag @e[type=marker,tag=zombie_spawnpoint,tag=!unlocked,tag=!area_1,tag=!area_2,tag=!area_2a,tag=!area_2b,tag=!area_3,tag=!area_5,tag=!area_5b,tag=!area_5d,tag=!area_6,tag=!area_6a,tag=!area_6b,tag=!area_6c,tag=!area_6d,tag=!area_7,tag=!area_8,tag=!area_9,tag=!area_9a,tag=!area_10,tag=!area_6e] add area_6e

##First area stuff
summon vindicator 3113 66 23 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11b,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Jeremiah","color":"gold","bold":true}]'}
loot spawn 3113 67 21 loot game:shop_items/stats/quiver
scoreboard players set @e[type=item,x=3113,y=67,z=21,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 130
scoreboard players set @e[type=item,x=3113,y=67,z=21,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 2147483647
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item


summon vindicator 3104 69 63 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11b,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Vanny","color":"gold","bold":true}]'}


loot spawn 3106 70 62 loot game:shop_items/utilities/shield
scoreboard players set @e[type=item,x=3106,y=70,z=62,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 50
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item

loot spawn 3105 70 62 loot game:shop_items/utilities/knockback_stick
scoreboard players set @e[type=item,x=3105,y=70,z=62,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 10
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item

loot spawn 3104 70 62 loot game:shop_items/health_potion
scoreboard players set @e[type=item,x=3104,y=70,z=62,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 70
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item


summon area_effect_cloud 3081 70 83 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 700
execute positioned 3081 70 83 as @e[type=area_effect_cloud,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

summon area_effect_cloud 3045 80 37 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 150
execute positioned 3045 80 37 as @e[type=area_effect_cloud,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment





bossbar remove game:boss
bossbar add game:boss [{"text":""}]


##Boss
scoreboard players set $y_level boss 45
scoreboard players set $spawn_delay boss 100
scoreboard players set $cooldown boss 100
scoreboard players set $set_charge boss 1
scoreboard players set $health boss 4000
scoreboard players set $phase_1_attacks boss 2
scoreboard players set $phase_2_attacks boss 4

bossbar set game:boss name ["",{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"dark_red","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" - ","color":"gray"},{"text":"Torthar ","color":"dark_red"},{"text":"the ","color":"gray"},{"text":"Undead ","color":"red"},{"text":"King","color":"dark_gray"}]
data modify storage game:boss name set value '[{"text":"Torthar","color":"dark_red"}]'
data modify storage game:boss title set value '[{"text":"the ","color":"gray"},{"text":"Undead ","color":"red"},{"text":"King","color":"dark_gray"}]'


execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:potion"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:red_shulker_box"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},x=0,y=66,z=0,distance=500..]
execute if score $starting_players game matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},x=0,y=66,z=0,distance=500..]

effect give @e[tag=shopkeeper] resistance 100000 126 true