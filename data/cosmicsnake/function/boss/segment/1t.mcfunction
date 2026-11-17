# check death - executed every tick because of moving mechanic returning segment disconnected error
execute unless entity @s[tag=cosmicsnake.segment_dead] \
    unless predicate cosmicsnake:check_segment_hitbox run return run function cosmicsnake:boss/segment/death/tag_as_dead with entity @s data

# hurt
execute unless entity @s[tag=cosmicsnake.segment_dead] on vehicle if entity @s[nbt={HurtTime:9s}] at @s run function cosmicsnake:boss/segment/hurt with entity @s data