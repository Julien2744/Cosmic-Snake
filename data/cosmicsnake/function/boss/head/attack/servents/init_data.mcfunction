function cosmicsnake:compability_tags

# modify damage
function cosmicsnake:boss/head/attack/servents/apply_dmg_mul with storage cosmicsnake:global

damage @s 0 minecraft:mob_attack by @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..128]

tag @s remove cosmicsnake.new