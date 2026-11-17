# check if a ray is already there
$execute if entity @n[type=minecraft:item_display,distance=..16,tag=cosmicsnake.raycannon.light,nbt={data:{owner:$(UUID)}}] run return 0

item modify entity @s weapon.mainhand cosmicsnake:raycannon_use
playsound minecraft:item.trident.thunder player @a[distance=..24] ~ ~ ~ 2 1.75
playsound minecraft:entity.creaking.activate player @a[distance=..24] ~ ~ ~ 2 2

execute anchored eyes run summon item_display ^ ^ ^0.25 {\
    width:1f,\
    height:1f,\
    billboard:"center",\
    Tags:["cosmicsnake.raycannon.light"],\
    data:{\
        owner:[0,0,0,0]\
    },\
    brightness:{sky:15,block:15},\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},\
    item:{id:"minecraft:popped_chorus_fruit",count:1,components:{"minecraft:item_model":"cosmicsnake:raycannon_light"}}\
}

# set owner data + rotation
data modify entity @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.light,distance=..2] data.owner set from entity @s UUID
data modify entity @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.light,distance=..2] Rotation set from entity @s Rotation

# cooldown
scoreboard players set @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.light,distance=..2] cosmicsnake.attack_cooldown 30

# tag depending on enchant
execute if predicate cosmicsnake:ray_cannon/ricochet_enchanted run return run tag @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.light,distance=..2] add cosmicsnake.raycannon.enchant.ricochet
execute if predicate cosmicsnake:ray_cannon/concentrated_enchanted run return run tag @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.light,distance=..2] add cosmicsnake.raycannon.enchant.concentrated

tag @n[type=minecraft:item_display,tag=cosmicsnake.raycannon.light,distance=..2] add cosmicsnake.raycannon.enchant.none