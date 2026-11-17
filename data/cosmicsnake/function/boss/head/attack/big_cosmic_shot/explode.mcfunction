data modify entity @s data.dmg set compute default float cosmicsnake:attack/big_cosmic_shot
execute at @e[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..5,limit=16] \
    run function cosmicsnake:boss/head/attack/big_cosmic_shot/apply_damage with entity @s data

particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.005 255
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0.02 128
particle flash{color:[0.584,0.176,0.878,1.00]} ~ ~ ~ 0 0 0 0 0 force
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 4 0
playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..32] ~ ~ ~ 4 0

execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    unless block ~ ~-2 ~ #cosmicsnake:explosion_cant_break run setblock ~ ~-2 ~ air
execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    run summon tnt ~ ~-2 ~ {Silent:1b,fuse:0,explosion_power:4,Tags:["cosmicsnake.cosmic_shot_explosion"]}

$execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 positioned ~ ~-2 ~ \
    run data modify entity @n[type=minecraft:tnt,tag=cosmicsnake.cosmic_shot_explosion,distance=..1] owner set from entity @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..156] UUID

kill @s