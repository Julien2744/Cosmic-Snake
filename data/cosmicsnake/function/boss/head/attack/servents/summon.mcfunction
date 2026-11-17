summon vex ~ ~ ~ {\
    PortalCooldown:9999999,\
    DeathLootTable:"cosmicsnake:empty",\
    PersistenceRequired:1b,\
    CanPickUpLoot:0b,\
    Health:25f,\
    life_ticks:1600,\
    Tags:[\
        "cosmicsnake.servent",\
        "cosmicsnake.immune",\
        "cosmicsnake.new"\
    ],\
    CustomName:"Cosmic Snake Servent",\
    data:{\
        snake_ID:0\
    },\
    equipment:{\
        mainhand:{id:"minecraft:wooden_axe",count:1,components:{"minecraft:item_model":"minecraft:netherite_axe"}},\
        offhand:{id:"minecraft:wooden_axe",count:1,components:{"minecraft:item_model":"minecraft:netherite_axe"}}\
    },\
    drop_chances:{mainhand:0.000,offhand:0.000},\
    attributes:[\
        {id:"minecraft:armor",base:20},\
        {id:"minecraft:armor_toughness",base:8},\
        {id:"minecraft:attack_damage",base:3},\
        {id:"minecraft:scale",base:2},\
        {id:"minecraft:knockback_resistance",base:4},\
        {id:"minecraft:air_drag_modifier",base:0.85},\
        {id:"minecraft:burning_time",base:0},\
        {id:"minecraft:oxygen_bonus",base:128},\
        {id:"minecraft:max_health",base:25},\
        {id:"minecraft:follow_range",base:255}\
    ]\
}

# not in init_data because of @s being the cosmic snake model
data modify entity @n[type=vex,tag=cosmicsnake.servent,tag=cosmicsnake.new,distance=..1] data.snake_ID set from entity @s data.snake_ID
data modify entity @n[type=vex,tag=cosmicsnake.servent,tag=cosmicsnake.new,distance=..1] owner set from entity @s UUID

execute as @n[type=vex,tag=cosmicsnake.servent,tag=cosmicsnake.new,distance=..1] run function cosmicsnake:boss/head/attack/servents/init_data