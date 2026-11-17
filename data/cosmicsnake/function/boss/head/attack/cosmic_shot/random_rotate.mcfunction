tag @s remove cosmicsnake.new

# make some shoot strait at the target
rotate @s facing entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..64] feet
execute if predicate cosmicsnake:random/15 run return 0

execute store result entity @s data.r0 float 1 run random value -12..12
execute store result entity @s data.r1 float 1 run random value -12..12

function cosmicsnake:boss/head/attack/cosmic_shot/rotate_macro with entity @s data