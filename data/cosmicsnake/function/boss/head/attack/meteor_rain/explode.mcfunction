data modify entity @s data.dmg set compute default float cosmicsnake:attack/meteor
execute at @e[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..8,limit=32] \
    run function cosmicsnake:boss/head/attack/meteor_rain/apply_damage with entity @s data

particle minecraft:large_smoke ~ ~2 ~ 3 4 3 0.005 255
particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.005 255
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0.02 128
particle minecraft:flame ~ ~1 ~ 0 2 0 0.5 32
playsound minecraft:entity.generic.explode hostile @a[distance=..42] ~ ~ ~ 6 0

execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    align xyz unless block ~0.5 ~-1.5 ~0.5 #cosmicsnake:explosion_cant_break run setblock ~ ~-1 ~ air
execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 align xyz \
    run summon tnt ~0.5 ~-1.5 ~0.5 {Silent:1b,fuse:0,explosion_power:8,Tags:["cosmicsnake.cosmic_shot_explosion"]}

$execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 positioned ~0.5 ~-1.5 ~0.5 \
    run data modify entity @n[type=minecraft:tnt,tag=cosmicsnake.cosmic_shot_explosion,distance=..1] owner set from entity @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..156] UUID

function cosmicsnake:boss/head/attack/meteor_rain/kill