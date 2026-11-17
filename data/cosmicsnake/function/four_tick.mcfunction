schedule function cosmicsnake:four_tick 4t

## Boss
execute as @e[type=item_display,tag=aj.cosmicsnake_head.root,limit=100] at @s \
    run function cosmicsnake:boss/head/4t

## Boss meteor
execute as @e[type=minecraft:block_display,tag=cosmicsnake.meteor.rock,limit=16] at @s \
    run function cosmicsnake:boss/head/attack/meteor_rain/4tick

## Boss summoner
execute as @e[type=minecraft:marker,tag=cosmicsnake.boss_summoner.loop,limit=8] at @s \
    run function cosmicsnake:boss_summoner/anim/loop