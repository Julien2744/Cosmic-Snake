# increase max segments tick counter
$scoreboard players add @e[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=1] \
    cosmicsnake.config.max_segment_tick 1

# if max segments tick counter reached the limit stop (return in move function)
$execute if score @e[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=1] \
    cosmicsnake.config.max_segment_tick = #cosmicsnake.config cosmicsnake.config.max_segment_tick \
        run tag @s add cosmicsnake.move.tick_here