scoreboard players add @s cosmicsnake.energy 500
tag @s add cosmicsnake.half_bonus_given

# yes I know this is not very good looking
execute on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] \
        run function cosmicsnake:boss/head/attack/servents/at_portal with entity @s data
execute on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] \
        run function cosmicsnake:boss/head/attack/servents/at_portal with entity @s data
execute on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] \
        run function cosmicsnake:boss/head/attack/servents/at_portal with entity @s data