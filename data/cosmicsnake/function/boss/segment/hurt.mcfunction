execute store result score @s cosmicsnake.health run data get entity @s Health 100

# if health is 0 (instakill) immediatly stop the boss
$execute if score @s cosmicsnake.health matches 0 run return run scoreboard players set @n[type=item_display,tag=aj.cosmicsnake_head.root,tag=!cosmicsnake.defeated,nbt={data:{snake_ID:$(snake_ID)}},distance=..256] cosmicsnake.stop 1

# calculate damage taken and store it in the head hitbox data
$data modify entity @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..256] data.dmg_taken set compute default float cosmicsnake:calculate_damage_taken

# apply the damage that were done
$execute as @n[type=minecraft:ghast,tag=cosmicsnake.head_hitbox,nbt={data:{snake_ID:$(snake_ID)}},distance=..256] at @s \
    run function cosmicsnake:boss/head/dmg_from_segment with entity @s data

playsound minecraft:block.netherrack.break hostile @a[distance=..16] ~ ~ ~ 1 0

# reset hp
scoreboard players reset @s cosmicsnake.health
execute store result entity @s Health float 1 run attribute @s minecraft:max_health get

# give resistance to all the other segments
execute if score #cosmicsnake.global cosmicsnake.gamerule.difficulty matches 2 \
    run effect give @e[type=ghast,tag=cosmicsnake.segment_hitbox,distance=..256,limit=65] minecraft:resistance 1 0 true
execute if score #cosmicsnake.global cosmicsnake.gamerule.difficulty matches 3 \
    run effect give @e[type=ghast,tag=cosmicsnake.segment_hitbox,distance=..256,limit=65] minecraft:resistance 1 1 true

# random chance to change aggro
execute if predicate cosmicsnake:random/2 \
    on attacker if entity @s[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..16] \
        run function cosmicsnake:set_target
# if no target instant aggro on attacker
execute unless entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..312,limit=1] \
    on attacker if entity @s[type=!#cosmicsnake:non_living,tag=!cosmicsnake.immune,distance=..64] \
        run function cosmicsnake:set_target

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true