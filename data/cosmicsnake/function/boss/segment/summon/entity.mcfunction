##
## SEGMENT !
##

summon minecraft:ghast ~ ~ ~ {\
    CustomName:"Cosmic Sake Segment",\
    Silent:1b,\
    PersistenceRequired:1b,\
    DeathLootTable:"cosmicsnake:empty",\
    NoAI:1b,\
    CanPickUpLoot:0b,\
    Health:1000f,\
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
        "cosmicsnake.immune",\
        "cosmicsnake.smithed_strict"\
    ],\
    active_effects:[\
        {id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},\
        {id:"minecraft:fire_resistance",amplifier:1,duration:-1,show_particles:0b},\
        {id:"minecraft:water_breathing",amplifier:1,duration:-1,show_particles:0b}\
    ],\
    attributes:[\
        {id:"minecraft:armor",base:15},\
        {id:"minecraft:max_health",base:1000},\
        {id:"minecraft:scale",base:1.2},\
        {id:"minecraft:armor_toughness",base:10}\
    ],\
    equipment:{\
        feet:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:enchantments":{"cosmicsnake:dev_scales_armor":1}}},\
        legs:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:enchantments":{"cosmicsnake:dev_scales_armor":1}}},\
        chest:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:enchantments":{"cosmicsnake:dev_scales_armor":1}}},\
        head:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:enchantments":{"cosmicsnake:dev_scales_armor":1}}}\
    },\
    drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},\
    PortalCooldown:9999999,\
    Passengers:[\
        {\
            id:"minecraft:item_display",\
            view_range:2f,\
            shadow_radius:3f,\
            shadow_strength:1f,\
            data:{\
                segment_ID:0,\
                snake_ID:0,\
            },\
            Tags:[\
                "cosmicsnake.new",\
                "cosmicsnake.segment",\
                "cosmicsnake.entity"\
            ],\
            teleport_duration:4,\
            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2.4f,0f],scale:[2.2f,2.2f,2.2f]},\
            item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:item_model":"cosmicsnake:segment"}}\
        }\
    ]\
}

# initialize data&scores
$execute as @n[type=item_display,tag=cosmicsnake.segment,tag=cosmicsnake.new,distance=..4] at @s \
    run function cosmicsnake:boss/segment/summon/init_data {segment_ID:$(segID),snake_ID:$(snakeID),move_speed:$(move_speed)}