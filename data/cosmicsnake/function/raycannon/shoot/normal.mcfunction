# summon
$execute unless entity @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.beam,nbt={data:{owner:$(owner)}},distance=..2] \
    positioned ^ ^ ^0.25 run return run function cosmicsnake:raycannon/shoot/summon_beam

# summon at furthest
# repeated so that the beam is faster
$execute at @e[type=minecraft:item_display,tag=cosmicsnake.raycannon.beam,tag=!cosmicsnake.new,nbt={data:{owner:$(owner)}},distance=..32,limit=1,sort=furthest] \
    positioned ^ ^ ^0.75 if block ~ ~ ~ #minecraft:replaceable run function cosmicsnake:raycannon/shoot/summon_beam
$execute at @e[type=minecraft:item_display,tag=cosmicsnake.raycannon.beam,tag=!cosmicsnake.new,nbt={data:{owner:$(owner)}},distance=..32,limit=1,sort=furthest] \
    positioned ^ ^ ^0.75 if block ~ ~ ~ #minecraft:replaceable run function cosmicsnake:raycannon/shoot/summon_beam
$execute at @e[type=minecraft:item_display,tag=cosmicsnake.raycannon.beam,tag=!cosmicsnake.new,nbt={data:{owner:$(owner)}},distance=..32,limit=1,sort=furthest] \
    positioned ^ ^ ^0.75 if block ~ ~ ~ #minecraft:replaceable run function cosmicsnake:raycannon/shoot/summon_beam