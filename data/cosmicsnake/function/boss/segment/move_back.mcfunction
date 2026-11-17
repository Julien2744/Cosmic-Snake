## segment

# remove tag (very important)
tag @s remove cosmicsnake.move.tick_here

# remove 1 from cosmicsnake.moveback_count
$scoreboard players remove @e[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=1] cosmicsnake.moveback_count 1

$execute if score @e[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=1] cosmicsnake.moveback_count matches ..0 \
    run return 0

function cosmicsnake:boss/segment/increase_max_segment_tick with entity @s data

# if max segments tick counter reached the limit
execute if entity @s[tag=cosmicsnake.move.tick_here] run return 0

# if tail stop
$execute if entity @s[tag=cosmicsnake.tail] run scoreboard players set @e[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=1] \
    cosmicsnake.moveback_count 0
execute if entity @s[tag=cosmicsnake.tail] run return 0

# move back
$execute facing entity @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:$(next_segment_ID),snake_ID:$(snake_ID)}},distance=..8,limit=1] feet \
    run function cosmicsnake:boss/move_foward with entity @s data

# tell previous segment to move back
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:$(next_segment_ID),snake_ID:$(snake_ID)}},distance=..8,limit=1] at @s \
    run function cosmicsnake:boss/segment/move_back with entity @s data