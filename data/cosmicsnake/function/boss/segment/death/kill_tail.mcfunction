# tag previous segment as tail
$tag @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:$(previous_segment_ID),snake_ID:$(snake_ID)}},distance=..8,limit=1] add cosmicsnake.tail

# if segment one, end the death sequence
$execute if entity @s[nbt={data:{segment_ID:1}}] \
    as @e[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,tag=!cosmicsnake.cant_move_back,nbt={data:{snake_ID:$(snake_ID)}},distance=..12,limit=1] at @s \
    run function cosmicsnake:boss/head/death/end with entity @s data

# kill segment
execute on passengers if entity @s[tag=cosmicsnake.segment] run kill @s
kill @s