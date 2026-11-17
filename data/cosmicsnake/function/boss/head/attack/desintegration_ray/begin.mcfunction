# effect
particle flash{color:[0.663,0.306,0.945,1.00]} ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.25 32 normal
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..132] ~ ~ ~ 32 0
playsound block.end_portal.spawn hostile @a[distance=..132] ~ ~ ~ 32 0

posteffect add @a[distance=..128,scores={cosmicsnake.config.disable_posteffect=0}] cosmicsnake:high_contrast

function cosmicsnake:boss/head/attack/desintegration_ray/summon with entity @s data

# if function wasn't summoned by the boss
execute unless entity @s[type=minecraft:item_display,tag=aj.cosmicsnake_head.root] run return 0

scoreboard players set @s cosmicsnake.can_move 0
effect give @e[type=minecraft:ghast,tag=cosmicsnake.entity,distance=..256,limit=64,sort=nearest] resistance 15 3 false

function aj:cosmicsnake_head/variants/charged_varient/apply

execute if score @s cosmicsnake.servents_count matches ..8 \
    on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] \
        run function cosmicsnake:boss/head/attack/servents/at_portal with entity @s data

execute on vehicle run effect give @s minecraft:regeneration 15 2 false