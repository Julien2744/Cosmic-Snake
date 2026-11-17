#$say move | snake_ID $(snake_ID)

# rotate the head toward the target
execute on passengers positioned ~ ~1 ~ facing entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128] eyes run rotate @s ~ ~

# stop the functon if the head is too close
execute on passengers if entity @s[tag=aj.cosmicsnake_head.root] \
    if function cosmicsnake:boss/head/check_target_close_mouth run return 0

# reset max segment tick count
scoreboard players set @s cosmicsnake.config.max_segment_tick 0

#rotate slowly
#normal rotate on the hitbox
#slowly increment display rotation to match hitbox rotation

# check if the head is disconnected
#$execute unless entity @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:1,snake_ID:$(snake_ID)}},distance=..8,limit=1] \
    run say head disconnected
$execute unless entity @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:1,snake_ID:$(snake_ID)}},distance=..8,limit=1] \
    run return run tp @s @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:1,snake_ID:$(snake_ID)}},distance=6..256,limit=1]

# move back if it was needed
execute if score @s cosmicsnake.moveback_duration matches -59.. run scoreboard players remove @s cosmicsnake.moveback_duration 1
# if the snake move foward for 40t reset move_back repetiton duration
execute if score @s cosmicsnake.moveback_duration matches -60 run scoreboard players set @s cosmicsnake.moveback_repetition 0
# moveback loop
# remove jump tag if durarion matches 1 (wierd bug fix)
#$execute if score @s cosmicsnake.moveback_duration matches 1 run tag @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,tag=cosmicsnake.move.tick_here,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=65] remove cosmicsnake.move.tick_here
execute if score @s cosmicsnake.moveback_duration matches 1.. run return run function cosmicsnake:boss/head/move_back with entity @s data

# move toward target
$execute positioned ~ ~1 ~ facing entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128] eyes positioned ^ ^ ^$(speed) \
    positioned ~-1.25 ~-1.25 ~-1.25 if entity @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:1,snake_ID:$(snake_ID)}},dx=1.25,dy=1.25,dz=1.25,limit=1] \
    at @s facing entity @n[tag=cosmicsnake.target,distance=..128] feet \
        run function cosmicsnake:boss/move_foward with entity @s data

# jump next segment move foward using "cosmicsnake.move.tick_here" tag
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,tag=cosmicsnake.move.tick_here,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=65] at @s \
    run return run function cosmicsnake:boss/segment/ask_move with entity @s data

# if the head didn't move tell the segment 1 to move
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,nbt={data:{segment_ID:1,snake_ID:$(snake_ID)}},distance=..8,limit=1] at @s \ 
    run function cosmicsnake:boss/segment/ask_move with entity @s data