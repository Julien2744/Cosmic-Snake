data modify entity @s data.dmg set compute default float cosmicsnake:attack/pointblank_shot
execute at @e[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..5,limit=16] \
        run function cosmicsnake:boss/head/attack/pointblank_shot/apply_damage with entity @s data

particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 255
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 1 64
particle flash{color:[0.584,0.176,0.878,1.00]} ~ ~ ~ 0 0 0 0 0 force
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 4 0

execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    unless block ~ ~-3 ~ #cosmicsnake:explosion_cant_break run setblock ~ ~-3 ~ air
execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    run summon tnt ~ ~-3 ~ {Silent:1b,fuse:0,explosion_power:4,Tags:["cosmicsnake.cosmic_shot_explosion"]}

$execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 positioned ~ ~-3 ~ \
    run data modify entity @n[type=minecraft:tnt,tag=cosmicsnake.cosmic_shot_explosion,distance=..1] owner set from entity @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..156] UUID

tag @n[type=minecraft:item_display,tag=aj.cosmicsnake_head.root,tag=cosmicsnake.pointblank_shot,distance=..142] remove cosmicsnake.pointblank_shot
kill @n[type=minecraft:marker,tag=cosmicsnake.pointblank_shot.marker,distance=..312]
kill @s