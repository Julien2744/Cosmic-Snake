execute if score @s cosmicsnake.health matches 0 run return 0

$execute if score @s cosmicsnake.energy matches ..749 \
    if entity @n[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":983576}}},distance=..256] \
    run return run data modify entity \
        @n[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":983576}}},distance=..256] \
        item.components."minecraft:dyed_color" set value 983576

$execute if score @s cosmicsnake.energy matches 750..1249 \
    if entity @n[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":3803230}}},distance=..256] \
    run return run data modify entity \
        @e[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":3803230}}},distance=..256,limit=1,sort=furthest] \
        item.components."minecraft:dyed_color" set value 3803230

$execute if score @s cosmicsnake.energy matches 1250..1749 \
    if entity @n[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":6688420}}},distance=..256] \
    run return run data modify entity \
        @e[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":6688420}}},distance=..256,limit=1,sort=furthest] \
        item.components."minecraft:dyed_color" set value 6688420

$execute if score @s cosmicsnake.energy matches 1750..2499 \
    if entity @n[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":9508075}}},distance=..256] \
    run return run data modify entity \
        @e[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":9508075}}},distance=..256,limit=1,sort=furthest] \
        item.components."minecraft:dyed_color" set value 9508075

$execute if score @s cosmicsnake.energy matches 2500.. \
    if entity @n[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":11025909}}},distance=..256] \
    run return run data modify entity \
        @e[type=minecraft:item_display,tag=cosmicsnake.segment,nbt={data:{snake_ID:$(snake_ID)}},nbt=!{item:{components:{"minecraft:dyed_color":11025909}}},distance=..256,limit=1,sort=furthest] \
        item.components."minecraft:dyed_color" set value 11025909

# only executed when all the segment have the corresponding color depending on the energy
tag @s remove cosmicsnake.show_energy