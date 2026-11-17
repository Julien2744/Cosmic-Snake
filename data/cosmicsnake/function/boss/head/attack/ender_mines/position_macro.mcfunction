$execute positioned ~$(x) ~$(y) ~$(z) \
    unless entity @n[type=minecraft:item_display,tag=cosmicsnake.ender_mine,distance=..3] \
    if block ~ ~ ~ #minecraft:replaceable \
        run return run function cosmicsnake:boss/head/attack/ender_mines/summon_inactive