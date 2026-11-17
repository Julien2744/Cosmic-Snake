playsound minecraft:entity.ender_dragon.shoot hostile @a[distance=..128] ~ ~ ~ 16 0.75
tag @n[type=item_display,tag=cosmicsnake.big_cosmic_shot,distance=..8] add cosmicsnake.big_cosmic_shot.shoot

execute unless predicate cosmicsnake:random/15 run function cosmicsnake:boss/head/attack/cosmic_shot/summon_entity with entity @s data
execute unless predicate cosmicsnake:random/15 run function cosmicsnake:boss/head/attack/cosmic_shot/summon_entity with entity @s data
execute unless predicate cosmicsnake:random/15 run function cosmicsnake:boss/head/attack/cosmic_shot/summon_entity with entity @s data

scoreboard players set @s cosmicsnake.attack_cooldown 60

function aj:cosmicsnake_head/animations/big_cosmic_shot/resume