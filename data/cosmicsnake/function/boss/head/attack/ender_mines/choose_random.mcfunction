# tick already existing inactive ender_mine
execute at @e[type=minecraft:item_display,tag=cosmicsnake.ender_mine,tag=cosmicsnake.ender_mine.inactive,distance=..32,limit=32] \
    run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 normal

execute store result entity @s data.random.x int 1 run random value -24..24
execute store result entity @s data.random.y int 1 run random value -8..24
execute store result entity @s data.random.z int 1 run random value -24..24

function cosmicsnake:boss/head/attack/ender_mines/position_macro with entity @s data.random