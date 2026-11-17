# rotation
execute positioned ~ ~-6 ~ facing entity @n[tag=cosmicsnake.target,distance=..64] eyes run rotate @s ~ ~

# summon in attack/4t

# end
execute if score @s cosmicsnake.attack_cooldown matches 15 run function aj:cosmicsnake_head/animations/cosmic_shot_close/play