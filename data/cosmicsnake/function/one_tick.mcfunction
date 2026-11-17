schedule function cosmicsnake:one_tick 1t

## Boss
execute as @e[type=item_display,tag=aj.cosmicsnake_head.root,limit=100] at @s \
    run function cosmicsnake:boss/head/1t

execute as @e[type=item_display,tag=cosmicsnake.segment,limit=2048] at @s \
    run function cosmicsnake:boss/segment/1t

## Boss summoner
execute as @e[type=marker,tag=cosmicsnake.boss_summoner.desintegration_ray_tick,limit=8] at @s \
    run function cosmicsnake:boss_summoner/desintegration_ray/tick with entity @s data