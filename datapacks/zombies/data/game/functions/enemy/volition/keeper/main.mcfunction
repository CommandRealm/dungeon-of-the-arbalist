# called when there is a keeper

# called when a keeper is hit:
execute if entity @s[nbt={HurtTime:9s},tag=keeper] run function game:enemy/volition/keeper/hit

# particles
particle falling_dust black_concrete ~ ~1.75 ~ 0.2 0.3 0.2 0.2 3
execute if entity @s[tag=transformed] run particle squid_ink ~ ~1.75 ~ 0 0 0 0.25 1