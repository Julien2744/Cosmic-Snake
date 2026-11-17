# temporary copied entity position to data field so less data is passed when calling the function
summon marker ~ ~2 ~ {Tags:["cosmicsnake.pos_marker"]}
data modify entity @s data.Pos set from entity @n[type=minecraft:marker,tag=cosmicsnake.pos_marker,distance=..3] Pos
function cosmicsnake:boss/head/attack/desintegration_ray/particle with entity @s data
data remove entity @s data.Pos
kill @n[type=minecraft:marker,tag=cosmicsnake.pos_marker,distance=..3]