##
## HEAD !
##

summon minecraft:ghast ~ ~ ~ {\
    CustomName:{"bold":true,"color":"black","shadow_color":-8189724,"text":"Cosmic Snake"},\
    Silent:1b,\
    PersistenceRequired:1b,\
    DeathLootTable:"cosmicsnake:empty",\
    NoAI:1b,\
    CanPickUpLoot:0b,\
    Health:1000f,\
    data:{\
        segment_ID:0,\
        snake_ID:0,\
        portal_x:0.0f,\
        portal_y:0.0f,\
        portal_z:0.0f,\
        segment_count:1,\
        speed:0.4f,\
        dmg_taken:0.0f\
    },\
    Tags:[\
        "cosmicsnake.head_hitbox",\
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
        {id:"minecraft:armor",base:30},\
        {id:"minecraft:max_health",base:1000},\
        {id:"minecraft:scale",base:1.2},\
        {id:"minecraft:armor_toughness",base:18}\
    ],\
    equipment:{\
        feet:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:enchantments":{"cosmicsnake:dev_scales_armor":1}}},\
        legs:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:enchantments":{"cosmicsnake:dev_scales_armor":1}}},\
        chest:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:enchantments":{"cosmicsnake:dev_scales_armor":1}}},\
        head:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:enchantments":{"cosmicsnake:dev_scales_armor":1}}}\
    },\
    drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},\
    PortalCooldown:9999999\
}

# summon aj model
execute rotated ~ 90 run function aj:cosmicsnake_head/summon {args:{}}
execute as @n[type=minecraft:item_display,tag=aj.cosmicsnake_head.root,distance=..4] \
    run ride @s mount @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,distance=..2]
data modify entity @n[type=minecraft:item_display,tag=aj.cosmicsnake_head.bone.head_root,distance=..16] view_range set value 2
data modify entity @n[type=minecraft:item_display,tag=aj.cosmicsnake_head.bone.mouth,distance=..16] view_range set value 2

# initialize data&scores
$execute as @n[type=item_display,tag=aj.cosmicsnake_head.root,distance=..4] at @s \
    run function cosmicsnake:boss/head/summon/init_data {snake_ID:$(random_ID),move_speed:$(move_speed)}

# set portal ID
$execute positioned ~ ~4 ~ run \
    data modify entity @n[type=item_display,tag=cosmicsnake.portal,distance=..4] data.snake_ID set value $(random_ID)