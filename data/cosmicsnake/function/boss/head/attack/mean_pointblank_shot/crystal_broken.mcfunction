scoreboard players set @s cosmicsnake.attack_cooldown 60

function cosmicsnake:boss/head/attack/mean_pointblank_shot/end
tag @s remove cosmicsnake.pointblank_shot

playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..64] ~ ~ ~ 8 0.8
particle flash{color:[0.584,0.176,0.878,1.00]} ~ ~ ~ 0 0 0 0 0 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.25 25

execute on vehicle run damage @s 28 minecraft:player_attack by @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128]