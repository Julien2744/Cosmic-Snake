schedule function cosmicsnake:one_second 1s

## Boss

execute as @e[type=item_display,tag=aj.cosmicsnake_head.root,limit=100] at @s \
    run function cosmicsnake:boss/head/1s

# re-put PortalCooldown
execute as @e[type=minecraft:ghast,tag=cosmicsnake.in_portal,nbt=!{PortalCooldown:300}] run function cosmicsnake:boss/reset_portal_cooldown