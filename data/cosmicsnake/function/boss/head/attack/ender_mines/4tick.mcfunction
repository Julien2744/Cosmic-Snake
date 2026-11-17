$scoreboard players remove @e[type=minecraft:item_display,tag=cosmicsnake.ender_mine,nbt={data:{snake_ID:$(snake_ID)}},distance=..128,limit=32] cosmicsnake.attack_cooldown 1
$execute as @e[type=minecraft:item_display,tag=cosmicsnake.ender_mine,nbt={data:{snake_ID:$(snake_ID)}},distance=..128,limit=32] at @s \
    run function cosmicsnake:boss/head/attack/ender_mines/4tick_at_self