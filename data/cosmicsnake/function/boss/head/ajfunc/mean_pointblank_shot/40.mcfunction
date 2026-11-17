execute positioned ^ ^-2 ^4 run function cosmicsnake:boss/head/attack/pointblank_shot/summon_beam
execute positioned ^ ^-2 ^4 run data modify entity @n[type=minecraft:end_crystal,tag=cosmicsnake.pointblank_shot.crystal,distance=..1] Invulnerable set value 0b
function aj:cosmicsnake_head/animations/mean_pointblank_shot/pause

tag @s add cosmicsnake.pointblank_shot
tag @s add cosmicsnake.pointblank_shot.mean

playsound minecraft:block.trial_spawner.ominous_activate hostile @a[distance=..64] ~ ~ ~ 8 0
playsound minecraft:block.enchantment_table.use hostile @a[distance=..64] ~ ~ ~ 8 0
particle flash{color:[0.584,0.176,0.878,1.00]} ~ ~ ~ 0 0 0 0 0 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.25 25