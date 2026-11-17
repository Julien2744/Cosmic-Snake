#$say ID:$(segment_ID) move success

# move toward the previous segment or the target
function cosmicsnake:boss/move_foward with entity @s data

# rotate the segment to the previous one
$execute on passengers if entity @s[type=minecraft:item_display,tag=cosmicsnake.segment] \
    facing entity @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(previous_segment_ID)}},distance=..8,limit=1] feet \
    run rotate @s ~ ~

# tell the previous segment that he can move
$execute unless entity @s[nbt={data:{segment_ID:1}}] \
    as @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(previous_segment_ID)}},distance=..8,limit=1] at @s \
        run return run function cosmicsnake:boss/segment/ask_move with entity @s data