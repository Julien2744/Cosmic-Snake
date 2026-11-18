scoreboard players set @s cosmicsnake.stop 1
scoreboard players set @s cosmicsnake.can_attack 1
posteffect remove @a[scores={cosmicsnake.config.disable_posteffect=0},distance=..256] cosmicsnake:high_contrast
tag @s add cosmicsnake.defeated
tag @e[tag=cosmicsnake.target,distance=..256,limit=8] remove cosmicsnake.target

execute unless entity @e[type=minecraft:item_display,tag=aj.cosmicsnake_head.root,tag=!cosmicsnake.defeated,distance=..256,limit=1] \ 
    run bossbar remove cosmicsnake:cosmicsnake_bossbar

# respawn hitbox and mount it
summon minecraft:ghast ~ ~-3.2 ~ {\
    CustomName:"Cosmic Sake Dead Head",\
    Silent:1b,\
    PersistenceRequired:1b,\
    DeathLootTable:"cosmicsnake:empty",\
    Invulnerable:1b,\
    NoAI:1b,\
    CanPickUpLoot:0b,\
    Health:1000f,\
    PortalCooldown:9999999,\
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
data modify entity @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,tag=cosmicsnake.new,distance=..8] data set from entity @s data
ride @s mount @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,tag=cosmicsnake.new,distance=..8]

execute on vehicle if entity @s[tag=cosmicsnake.head_hitbox] run data modify entity @s data.move_speed set compute default float cosmicsnake:config_default_value/move_speed 
execute on vehicle if entity @s[tag=cosmicsnake.head_hitbox] run data modify entity @s data.segment_ID set value 0
execute on vehicle if entity @s[tag=cosmicsnake.head_hitbox] at @s run function cosmicsnake:boss/head/summon/init_data_hitbox with entity @s data

execute on vehicle if entity @s[tag=cosmicsnake.head_hitbox] run tag @s remove cosmicsnake.new

function aj:cosmicsnake_head/animations/pause_all
function aj:cosmicsnake_head/animations/death/play

# remove tick_here tag
$tag @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=65] remove cosmicsnake.move.tick_here

# make all segment invulnerable
$execute as @e[type=minecraft:ghast,tag=cosmicsnake.entity,nbt={data:{snake_ID:$(snake_ID)}},distance=..256,limit=69] \
    run data modify entity @s Invulnerable set value 1b

# kill all summons
function cosmicsnake:boss/head/death/kill_all_summons with entity @s data