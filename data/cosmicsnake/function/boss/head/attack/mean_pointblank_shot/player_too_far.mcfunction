kill @n[type=minecraft:end_crystal,tag=cosmicsnake.pointblank_shot.crystal,distance=..12]

scoreboard players add @s cosmicsnake.energy 150
tag @s add cosmicsnake.show_energy

execute if score @s cosmicsnake.servents_count matches ..8 \
    on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] \
        run function cosmicsnake:boss/head/attack/servents/at_portal with entity @s data

scoreboard players set @s cosmicsnake.attack_cooldown 50
function cosmicsnake:boss/head/attack/mean_pointblank_shot/end
tag @s remove cosmicsnake.pointblank_shot