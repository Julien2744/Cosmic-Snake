# stop if health is 0
execute store result score @s cosmicsnake.health run data get entity @s Health
execute if score @s cosmicsnake.health matches 0 on passengers run return run scoreboard players set @s cosmicsnake.stop 1

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s minecraft:invisibility infinite 1 true
#re-gain health regen
execute if score #cosmicsnake.global cosmicsnake.gamerule.difficulty matches 2.. \
    unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s minecraft:regeneration infinite 0 true

execute if entity @s[tag=cosmicsnake.damage_source.segment] run return run tag @s remove cosmicsnake.damage_source.segment
# everything below is damage that isn't tranfered by a segment

function cosmicsnake:boss/head/sound/hurt

# increase energy if the head got damaged
execute on passengers if entity @s[tag=aj.cosmicsnake_head.root] \
        run scoreboard players operation @s cosmicsnake.energy += @s cosmicsnake.energy_repetition
execute on passengers if entity @s[tag=aj.cosmicsnake_head.root] \
    unless entity @s[tag=cosmicsnake.show_energy] run tag @s add cosmicsnake.show_energy