# called for the explosion

# explosion
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[tag=trial_detonation]
playsound minecraft:entity.generic.explode master @a[tag=trial_detonation] ~ ~ ~ 1 1

# damaging nearby players
execute positioned ~ ~1 ~ as @a[distance=..5,tag=trial_detonation] run damage @s 1.0 explosion
execute positioned ~ ~1 ~ as @a[distance=..4,tag=trial_detonation] run damage @s 2.0 explosion
execute positioned ~ ~1 ~ as @a[distance=..3,tag=trial_detonation] run damage @s 2.0 explosion
execute positioned ~ ~1 ~ as @a[distance=..2,tag=trial_detonation] run damage @s 2.0 explosion
execute positioned ~ ~1 ~ as @a[distance=..1,tag=trial_detonation] run damage @s 2.0 explosion
