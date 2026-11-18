#$say ask move segID: $(segment_ID) | snakeID: $(snake_ID) | next_segID: $(next_segment_ID) | prev_segID: $(previous_segment_ID) |
#effect give @s glowing 1 0

# remove tag
execute if entity @s[tag=cosmicsnake.move.tick_here] run tag @s remove cosmicsnake.move.tick_here

# if tail, move the head back (if it can)
$execute if entity @s[tag=cosmicsnake.tail] \
    as @e[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,tag=!cosmicsnake.cant_move_back,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=1] at @s \
        run return run function cosmicsnake:boss/head/move_back_check with entity @s data

# if tail and can't move the head back stop and also rotate toward previous segment cause why not + estectic
$execute if entity @s[tag=cosmicsnake.tail] run return run execute on passengers if entity @s[type=minecraft:item_display,tag=cosmicsnake.segment] \
    facing entity @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(previous_segment_ID)}},distance=..8,limit=1] feet \
        run rotate @s ~ ~

# increment segment tick counter
function cosmicsnake:boss/segment/increase_max_segment_tick with entity @s data

# if max segments tick counter reached the limit
#execute if entity @s[tag=cosmicsnake.move.tick_here] run effect give @s glowing 1 0
execute if entity @s[tag=cosmicsnake.move.tick_here] run return 0

# move toward previous segment
$execute facing entity @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(previous_segment_ID)}},distance=..8,limit=1] feet \
    positioned ~-1 ~ ~-1 if entity @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(next_segment_ID)}},dx=1,dy=1,dz=1,limit=1] \
    at @s facing entity @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(previous_segment_ID)}},distance=..8,limit=1] feet \
        run return run function cosmicsnake:boss/segment/move_success with entity @s data

# move toward target if it can
$execute facing entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128] feet positioned ^ ^ ^$(speed) \
    positioned ~-1 ~ ~-1 if entity @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(next_segment_ID)}},dx=1,dy=1,dz=1,limit=1] \
    at @s facing entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128] feet \
        run return run function cosmicsnake:boss/segment/move_success with entity @s data

# if the segment didn't move tell the next one to move
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:$(next_segment_ID),snake_ID:$(snake_ID)}},distance=..8,limit=1] at @s \ 
    run return run function cosmicsnake:boss/segment/ask_move with entity @s data

# if everything fail that mean the segment got disconnected
#$say ask_move disconnected at segment $(segment_ID)
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{segment_ID:$(next_segment_ID),snake_ID:$(snake_ID)}},distance=6..256,limit=1] at @s \
    run function cosmicsnake:boss/segment/fix_disconnected with entity @s data
# for extra mesure and wierd tp position, also tp this segment to the previous one
function cosmicsnake:boss/segment/fix_disconnected with entity @s data