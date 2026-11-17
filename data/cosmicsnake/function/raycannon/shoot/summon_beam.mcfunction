summon item_display ~ ~ ~ {\
    width:1f,\
    height:1f,\
    Tags:["cosmicsnake.raycannon.beam","cosmicsnake.new"],\
    data:{\
        owner:[0,0,0,0]\
    },\
    brightness:{sky:15,block:15},\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},\
    item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:item_model":"cosmicsnake:raycannon_beam"}}\
}

# set owner data + rotation
data modify entity @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.beam,tag=cosmicsnake.new,distance=..2] data.owner set from entity @s data.owner
data modify entity @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.beam,tag=cosmicsnake.new,distance=..2] Rotation set from entity @s Rotation

# ricochet special
execute if entity @s[tag=cosmicsnake.raycannon.enchant.ricochet] run function cosmicsnake:raycannon/shoot/ricochet_summon_special with entity @s data

tag @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.beam,tag=cosmicsnake.new,distance=..2] remove cosmicsnake.new

# damage
function cosmicsnake:raycannon/shoot/damage with entity @s data