# keep above cosmicsnake.stop
# death put here because of massive lag with move behavior
execute unless entity @s[tag=cosmicsnake.defeated] \
    unless predicate cosmicsnake:check_head_hitbox run return run function cosmicsnake:boss/head/death/begin with entity @s data

# stop the snake
execute if score @s cosmicsnake.stop matches 1 run return 0
execute if entity @s[tag=cosmicsnake.defeated] run return 0
execute if entity @s[tag=cosmicsnake.boss_summoner.stop] run return 0

# move
execute if score @s cosmicsnake.can_move matches 1 if entity @n[tag=cosmicsnake.target,distance=..128] \
    on vehicle at @s[tag=!cosmicsnake.cant_move_back] run function cosmicsnake:boss/head/move with entity @s data

# hurt
execute on vehicle if entity @s[nbt={HurtTime:9s}] at @s run function cosmicsnake:boss/head/hurt with entity @s data

# attack
execute if score @s cosmicsnake.can_attack matches 1 run function cosmicsnake:boss/head/attack/tick with entity @s data

# segment contact damage
execute if score #cosmicsnake.global cosmicsnake.gamerule.difficulty matches 2.. \
    at @a[gamemode=!creative,gamemode=!spectator,distance=..64,limit=8] \
    if entity @n[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,distance=..8] \
    as @n[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,distance=..8] at @s positioned ~-2 ~-0.5 ~-2 \
        run function cosmicsnake:boss/segment/contact_damage