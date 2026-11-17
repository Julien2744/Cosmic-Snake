# decrement 1 from the segment count and set the last one as the tail
scoreboard players remove @s cosmicsnake.segment_count 1
execute store result entity @s data.segment_count int 1 run scoreboard players get @s cosmicsnake.segment_count
function cosmicsnake:boss/head/set_tail with entity @s data
data modify entity @n[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,tag=cosmicsnake.tail,distance=..8] Invulnerable set value 1b

execute on passengers if entity @s[tag=aj.cosmicsnake_head.root] run scoreboard players set @s cosmicsnake.stop 0
execute on passengers if entity @s[tag=aj.cosmicsnake_head.root] run scoreboard players set @s cosmicsnake.can_move 1
execute on passengers if entity @s[tag=aj.cosmicsnake_head.root] run scoreboard players set @s cosmicsnake.can_attack 1
execute on passengers if entity @s[tag=aj.cosmicsnake_head.root] run scoreboard players set @s cosmicsnake.attack_cooldown 60
scoreboard players reset @s cosmicsnake.segment_count

execute if score #cosmicsnake.config cosmicsnake.config.bossbar matches 1 run function cosmicsnake:boss/set_bossbar
execute store result bossbar cosmicsnake:cosmicsnake_bossbar max run scoreboard players get #cosmicsnake.global cosmicsnake.boss_max_health

data remove entity @s data.random_x
data remove entity @s data.random_y
data remove entity @s data.random_z