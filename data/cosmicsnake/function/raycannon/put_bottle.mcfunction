playsound minecraft:item.bottle.fill_dragonbreath player @a[distance=..8] ~ ~ ~ 1 0
execute if entity @s[gamemode=!creative,gamemode=!spectator] run item replace entity @s weapon.offhand with air

execute if predicate cosmicsnake:ray_cannon/is_empty \
    run return run item modify entity @s weapon.mainhand {type:"minecraft:set_custom_data",tag:{cosmicsnake.item:{ray-cannon:{tubes:"half"}}}}

execute if predicate cosmicsnake:ray_cannon/is_half \
    run advancement grant @s only cosmicsnake:cannon_power
execute if predicate cosmicsnake:ray_cannon/is_half \
    run return run item modify entity @s weapon.mainhand cosmicsnake:raycannon_complete