#$say segment: $(segment_ID) disconnected | next_segID: $(next_segment_ID) | prev_segID: $(previous_segment_ID) |

$execute as @n[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(next_segment_ID)}},distance=..256] \
    at @s on passengers rotated as @s \
    facing entity @n[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(previous_segment_ID)}},distance=..256] feet \
        run tp @n[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID),segment_ID:$(segment_ID)}},distance=..256] ^ ^ ^3