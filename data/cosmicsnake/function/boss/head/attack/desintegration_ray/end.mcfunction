$execute at @e[type=minecraft:item_display,tag=cosmicsnake.desintegration_ray,nbt={data:{snake_ID:$(snake_ID)}},distance=..142,limit=38,sort=nearest] run particle dust_color_transition{from_color:[0.663,0.306,0.945],to_color:[0.584,0.176,0.878],scale:4} ~ ~ ~ 1.25 1.25 1.25 0 25
$execute positioned ^ ^ ^72 run kill @e[type=minecraft:item_display,tag=cosmicsnake.desintegration_ray,nbt={data:{snake_ID:$(snake_ID)}},distance=..72,limit=38,sort=nearest]

function aj:cosmicsnake_head/animations/desintegration_ray/resume

scoreboard players set @s cosmicsnake.energy 0
tag @s add cosmicsnake.show_energy