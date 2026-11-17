execute on vehicle if predicate cosmicsnake:has_target on target if entity @s[tag=!cosmicsnake.immune,distance=..128] \
    run return run function cosmicsnake:set_target

# use auto-aggro entity - player
execute if entity @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,tag=!cosmicsnake.immune,distance=..128,limit=1] \
    as @n[type=minecraft:player,gamemode=!creative,gamemode=!spectator,tag=!cosmicsnake.immune,distance=..128] \
        run return run function cosmicsnake:set_target

# use auto-aggro entity (non-player)
execute if entity @e[type=#cosmicsnake:aggro_boss,tag=!cosmicsnake.immune,distance=..128,limit=1] \
    as @n[type=#cosmicsnake:aggro_boss,tag=!cosmicsnake.immune,distance=..128] \
        run return run function cosmicsnake:set_target