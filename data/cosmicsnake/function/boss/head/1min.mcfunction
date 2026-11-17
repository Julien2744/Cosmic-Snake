execute if entity @s[tag=cosmicsnake.boss_summoner.stop] run return 0
execute if score @s cosmicsnake.stop matches 1 run return 0

execute if entity @s[tag=cosmicsnake.half_bonus_given] unless predicate cosmicsnake:random/25 \
    on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] \
        run function cosmicsnake:boss/head/attack/meteor_rain/at_portal with entity @s data