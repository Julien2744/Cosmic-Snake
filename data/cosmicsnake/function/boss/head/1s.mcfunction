execute if entity @s[tag=cosmicsnake.boss_summoner.stop] run return 0
execute if score @s cosmicsnake.stop matches 1 run return 0

# move behavior that didn't needed to be executed every tick
execute if score @s cosmicsnake.can_move matches 1 if entity @n[tag=cosmicsnake.target,distance=..64] \
    on vehicle if entity @s[tag=cosmicsnake.cant_move_back] run tag @s remove cosmicsnake.cant_move_back

# auto-target
# use hitbox target
execute unless entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..256,limit=1] \
    run function cosmicsnake:boss/head/check_for_target

# servents count
execute store result score @s cosmicsnake.servents_count run execute if entity @e[type=minecraft:vex,tag=cosmicsnake.servent,distance=..255]

# servent aggro
execute if score @s cosmicsnake.servents_count matches 1.. \
    as @e[type=minecraft:vex,tag=cosmicsnake.servent,predicate=!cosmicsnake:has_target,distance=..255] run damage @s 0 minecraft:mob_attack by @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128]