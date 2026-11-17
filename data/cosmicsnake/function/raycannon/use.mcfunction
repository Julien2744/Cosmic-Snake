advancement revoke @s only cosmicsnake:trigger/raycannon_use

# upgrade
execute if predicate cosmicsnake:ray_cannon/is_full \
    if predicate cosmicsnake:ray_cannon/ricochet_upgrade_in_offhand \
    unless predicate cosmicsnake:ray_cannon/ricochet_enchanted \
    unless predicate cosmicsnake:ray_cannon/concentrated_enchanted \
        run return run function cosmicsnake:raycannon/enchant_ricochet

execute if predicate cosmicsnake:ray_cannon/is_full \
    if predicate cosmicsnake:ray_cannon/concentrated_upgrade_in_offhand \
    unless predicate cosmicsnake:ray_cannon/ricochet_enchanted \
    unless predicate cosmicsnake:ray_cannon/concentrated_enchanted \
        run return run function cosmicsnake:raycannon/enchant_concentrated

# shoot
execute if predicate cosmicsnake:ray_cannon/is_full \
    run return run function cosmicsnake:raycannon/shoot with entity @s

# put bottle
execute if predicate cosmicsnake:ray_cannon/cosmic_bottle_in_offhand \
    run return run function cosmicsnake:raycannon/put_bottle

# cannon in off-hand
execute if predicate cosmicsnake:ray_cannon/ray_cannon_in_offhand \
    run return run title @s actionbar {"italic":false,"text":"This weapon only work in the main-hand"}

# no bottle inserted + no bottle in off-hand
title @s actionbar {"italic":false,"text":"Right-Click with a Cosmic Bottle in the Off-Hand to charge the weapon"}