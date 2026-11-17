# execute as hitbox

execute store result entity @s data.random_x float 0.01 run random value -125..125
execute store result entity @s data.random_y float 0.01 run random value 0..125
execute store result entity @s data.random_z float 0.01 run random value -125..125

function cosmicsnake:boss/head/summon/create_segment_summon with entity @s data