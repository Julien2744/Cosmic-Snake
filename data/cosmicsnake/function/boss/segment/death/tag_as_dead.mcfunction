tag @s add cosmicsnake.segment_dead

# respawn hitbox and mount it
summon minecraft:ghast ~ ~-3.2 ~ {\
    CustomName:"Cosmic Sake Dead Segment",\
    Silent:1b,\
    PersistenceRequired:1b,\
    DeathLootTable:"cosmicsnake:empty",\
    NoAI:1b,\
    CanPickUpLoot:0b,\
    Health:1000f,\
    Invulnerable:1b,\
    data:{\
        segment_ID:0,\
        previous_segment_ID:0,\
        next_segment_ID:0,\
        snake_ID:0,\
        speed:0.4f,\
    },\
    Tags:[\
        "cosmicsnake.segment_hitbox",\
        "cosmicsnake.entity",\
        "cosmicsnake.smithed_strict",\
        "cosmicsnake.new"\
    ],\
    active_effects:[\
        {id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}\
    ],\
    attributes:[\
        {id:"minecraft:armor",base:30},\
        {id:"minecraft:max_health",base:1000},\
        {id:"minecraft:scale",base:1.2},\
        {id:"minecraft:armor_toughness",base:18}\
    ]\
}
data modify entity @n[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,tag=cosmicsnake.new,distance=..8] data set from entity @s data
ride @s mount @n[type=ghast,tag=cosmicsnake.segment_hitbox,tag=cosmicsnake.new,distance=..8]

execute on vehicle if entity @s[tag=cosmicsnake.segment_hitbox] run data modify entity @s data.move_speed set compute default float cosmicsnake:config_default_value/move_speed 
execute on vehicle if entity @s[tag=cosmicsnake.segment_hitbox] at @s run function cosmicsnake:boss/segment/summon/init_data_hitbox with entity @s data

execute on vehicle if entity @s[tag=cosmicsnake.segment_hitbox] run tag @s remove cosmicsnake.new

# return if the head already have the tag+score
$execute if entity @n[type=item_display,tag=aj.cosmicsnake_head.root,tag=cosmicsnake.defeated,nbt={data:{snake_ID:$(snake_ID)}},distance=..256] run return 0

# if a segment died tell the head that the boss has been defated
$kill @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..256]
$scoreboard players set @n[type=item_display,tag=aj.cosmicsnake_head.root,tag=!cosmicsnake.defeated,nbt={data:{snake_ID:$(snake_ID)}},distance=..256] cosmicsnake.stop 1