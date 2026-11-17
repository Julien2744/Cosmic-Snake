summon marker ~ ~ ~ {\
    Rotation:[0,90],\
    Tags:[\
        "cosmicsnake.boss_summoner.desintegration_ray_tick"\
    ],\
    data:{\
        snake_ID:-10 \
    }\
}

scoreboard players set @n[type=marker,tag=cosmicsnake.boss_summoner.desintegration_ray_tick,distance=..1] cosmicsnake.attack_cooldown 250
execute as @n[type=marker,tag=cosmicsnake.boss_summoner.desintegration_ray_tick,distance=..1] run function cosmicsnake:boss/head/attack/desintegration_ray/begin

function cosmicsnake:create_schedule