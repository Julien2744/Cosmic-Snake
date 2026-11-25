# if target is too far
execute unless entity @n[tag=cosmicsnake.target,distance=..60] run return run function cosmicsnake:boss/head/attack/mean_pointblank_shot/player_too_far

# rotation
execute positioned ~ ~-4 ~ facing entity @n[tag=cosmicsnake.target,distance=..60] feet run rotate @s ~ ~
execute positioned ~ ~-4 ~ run tp @n[type=minecraft:end_crystal,tag=cosmicsnake.pointblank_shot.crystal,distance=..12] ^ ^-2 ^4

# tick crystal
execute if entity @n[type=minecraft:end_crystal,tag=cosmicsnake.pointblank_shot.crystal,distance=..12] \
    as @n[type=minecraft:end_crystal,tag=cosmicsnake.pointblank_shot.crystal,distance=..12] at @s \
        run return run function cosmicsnake:boss/head/attack/mean_pointblank_shot/tick_crystal

# if there no end_crystal
execute unless entity @s[tag=cosmicsnake.pointblank_shot.mean_success] run function cosmicsnake:boss/head/attack/mean_pointblank_shot/crystal_broken