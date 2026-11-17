$execute positioned ~-1.5 ~-1.5 ~-1.5 at @e[type=!#cosmicsnake:non_living,dx=1.5,dy=1.5,dz=1.5,nbt=!{UUID:$(owner)},limit=16] \
    run damage @n[type=!#cosmicsnake:non_living,dx=0,dy=0,dz=0,nbt=!{UUID:$(owner)}] 25 minecraft:player_explosion by @p[nbt={UUID:$(owner)},distance=..128]

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.25 25
playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..24] ~ ~ ~ 1 1.9

execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    unless block ~ ~ ~ #cosmicsnake:explosion_cant_break run setblock ~ ~ ~ air destroy

kill @s