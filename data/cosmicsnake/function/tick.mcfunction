## ray-cannon light
execute if entity @e[type=minecraft:item_display,tag=cosmicsnake.raycannon.light,limit=1] \
    as @e[type=minecraft:item_display,tag=cosmicsnake.raycannon.light,limit=32] at @s \
        run function cosmicsnake:raycannon/shoot/tick

## ray-cannon concentrated shot
execute if entity @e[type=minecraft:item_display,tag=cosmicsnake.raycannon.shot,limit=1] \
    as @e[type=minecraft:item_display,tag=cosmicsnake.raycannon.shot,limit=32] at @s \
        run function cosmicsnake:raycannon/shoot/tick_concentrated with entity @s data