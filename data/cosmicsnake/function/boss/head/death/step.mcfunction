# jump next segment move backward using "cosmicsnake.move.tick_here" tag
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,tag=cosmicsnake.move.tick_here,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=65] at @s \
    run return run function cosmicsnake:boss/segment/death/move_back_dead with entity @s data

# move the head back
$execute facing entity @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:1,snake_ID:$(snake_ID)}},distance=..10,limit=1] feet \
    run function cosmicsnake:boss/move_foward with entity @s data

# tell segment 1 to move back
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:1,snake_ID:$(snake_ID)}},distance=..10,limit=1] at @s \
    run function cosmicsnake:boss/segment/death/move_back_dead with entity @s data