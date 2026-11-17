# floor -> int (ceil)
$execute store result score @s cosmicsnake.math.memory run compute default integer {type:"minecraft:from_float",input:{type:"minecraft:ceil",input:$(dmg_taken)}}

# increase the energy
# multiply the damage taken by the reperition (that decrease by 1 every 10t)
scoreboard players operation @s cosmicsnake.math.memory += @s cosmicsnake.math.memory
scoreboard players operation @s cosmicsnake.math.memory *= @s cosmicsnake.energy_repetition
scoreboard players operation @s cosmicsnake.energy += @s cosmicsnake.math.memory

# increase the repetition
scoreboard players add @s cosmicsnake.energy_repetition 1
scoreboard players reset @s cosmicsnake.math.memory
execute unless entity @s[tag=cosmicsnake.show_energy] run tag @s add cosmicsnake.show_energy