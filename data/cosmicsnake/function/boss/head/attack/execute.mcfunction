#execute as @n[type=item_display,tag=aj.cosmicsnake_head.root] at @s run function cosmicsnake:boss/head/attack/execute {ID:0,duration:0}

#$say chosen attack with ID:$(ID) | duration:$(duration)

$scoreboard players set @s cosmicsnake.attack_ID $(ID)
execute unless score @s cosmicsnake.attack_ID matches 0 run scoreboard players set @s cosmicsnake.can_move 0

$scoreboard players set @s cosmicsnake.attack_cooldown $(duration)

# 0 mean we just want the duration + make the boss able to move
execute if score @s cosmicsnake.attack_ID matches 0 run return run scoreboard players set @s cosmicsnake.can_move 1

# ultimate - desintegration ray
execute if score @s cosmicsnake.attack_ID matches 1 run return run function cosmicsnake:boss/head/attack/desintegration_ray/anim_begin
# cosmic_shot
execute if score @s cosmicsnake.attack_ID matches 2 if score @s cosmicsnake.health_pour matches ..30 run scoreboard players set @s cosmicsnake.can_move 1
execute if score @s cosmicsnake.attack_ID matches 2 run return run function aj:cosmicsnake_head/animations/cosmic_shot_open/play

# bite
execute if score @s cosmicsnake.attack_ID matches 3 run scoreboard players set @s cosmicsnake.can_move 1
execute if score @s cosmicsnake.attack_ID matches 3 run return run function aj:cosmicsnake_head/animations/bite/play

# big_cosmic_shot
execute if score @s cosmicsnake.attack_ID matches 4 run return run function aj:cosmicsnake_head/animations/big_cosmic_shot/play

# pointblank_shot
execute if score @s cosmicsnake.attack_ID matches 5 run return run function cosmicsnake:boss/head/attack/pointblank_shot/anim_begin

# mean_pointblank_shot
execute if score @s cosmicsnake.attack_ID matches 6 run return run function aj:cosmicsnake_head/animations/mean_pointblank_shot/play

# ender_mines
execute if score @s cosmicsnake.attack_ID matches 7 run return run function aj:cosmicsnake_head/animations/ender_mines/play

# second phase
execute if score @s cosmicsnake.attack_ID matches 8 run return run function aj:cosmicsnake_head/animations/second_phase/play

# servents
execute if score @s cosmicsnake.attack_ID matches 9 run scoreboard players set @s cosmicsnake.can_move 1
execute if score @s cosmicsnake.attack_ID matches 9 run return run execute on vehicle if entity @s[type=minecraft:ghast,tag=cosmicsnake.head_hitbox] \
        run function cosmicsnake:boss/head/attack/servents/at_portal with entity @s data