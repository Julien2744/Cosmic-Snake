## segment

#$say ask move segID: $(segment_ID) | snakeID: $(snake_ID) | next_segID: $(next_segment_ID) | prev_segID: $(previous_segment_ID) |

# if tail kill and pass it to the previous segment if it's close
$execute if entity @s[tag=cosmicsnake.tail] \
    if entity @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{segment_ID:$(previous_segment_ID),snake_ID:$(snake_ID)}},distance=..$(speed),limit=1] \
    run return run function cosmicsnake:boss/segment/death/kill_tail with entity @s data

# remove tag (very important)
tag @s remove cosmicsnake.move.tick_here

function cosmicsnake:boss/segment/increase_max_segment_tick with entity @s data

# if max segments tick counter reached the limit
execute if entity @s[tag=cosmicsnake.move.tick_here] run return 0

# move back
$execute facing entity @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:$(next_segment_ID),snake_ID:$(snake_ID)}},distance=..10,limit=1] feet \
    run function cosmicsnake:boss/move_foward with entity @s data

# tell previous segment to move back
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(next_segment_ID)}},distance=..10,limit=1] at @s \
    run function cosmicsnake:boss/segment/death/move_back_dead with entity @s data