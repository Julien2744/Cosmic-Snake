# executed as at crystal
scoreboard players remove @s cosmicsnake.attack_cooldown 1

execute if score @s cosmicsnake.attack_cooldown matches 2.. \
    positioned as @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..64] \
    positioned ~ ~-2 ~-1 run function cosmicsnake:boss/head/attack/pointblank_shot/move_beam

execute if score @s cosmicsnake.attack_cooldown matches 150 \
    at @n[type=minecraft:marker,tag=cosmicsnake.pointblank_shot.marker,distance=..64] \
    positioned ~ ~2 ~1 run return run function cosmicsnake:boss/head/attack/pointblank_shot/warning/1

execute if score @s cosmicsnake.attack_cooldown matches 100 \
    at @n[type=minecraft:marker,tag=cosmicsnake.pointblank_shot.marker,distance=..64] \
    positioned ~ ~2 ~1 run return run function cosmicsnake:boss/head/attack/pointblank_shot/warning/2

execute if score @s cosmicsnake.attack_cooldown matches 50 \
    at @n[type=minecraft:marker,tag=cosmicsnake.pointblank_shot.marker,distance=..64] \
    positioned ~ ~2 ~1 run return run function cosmicsnake:boss/head/attack/pointblank_shot/warning/3

execute if score @s cosmicsnake.attack_cooldown matches 2 run tag @n[type=minecraft:item_display,tag=aj.cosmicsnake_head.root,tag=cosmicsnake.pointblank_shot,distance=..16] add cosmicsnake.pointblank_shot.mean_success
execute if score @s cosmicsnake.attack_cooldown matches 2 \
    at @n[type=minecraft:marker,tag=cosmicsnake.pointblank_shot.marker,distance=..64] \
        run return run playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..64] ~ ~ ~ 32 1.8

execute if score @s cosmicsnake.attack_cooldown matches 0 \
    at @n[type=minecraft:marker,tag=cosmicsnake.pointblank_shot.marker,distance=..64] \
    positioned ~ ~3 ~1 run return run function cosmicsnake:boss/head/attack/mean_pointblank_shot/explode

# if it somehow went to the negative
execute if score @s cosmicsnake.attack_cooldown matches ..-1 \
    run return run function cosmicsnake:boss/head/attack/mean_pointblank_shot/explode