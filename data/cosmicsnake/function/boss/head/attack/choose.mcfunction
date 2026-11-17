#execute as @n[type=item_display,tag=aj.cosmicsnake_head.root] at @s run function cosmicsnake:boss/head/attack/execute {ID:0,duration:0}

# ultimate - desintegration ray
execute if score @s cosmicsnake.energy matches 2500.. run return run function cosmicsnake:boss/head/attack/execute {ID:1,duration:999}

# half hp buff
execute if score @s cosmicsnake.health_pour matches ..50 \
    unless entity @s[tag=cosmicsnake.half_bonus_given] \
        run return run function cosmicsnake:boss/head/attack/execute {ID:8,duration:90}

# ender_mines
execute unless entity @e[type=minecraft:item_display,tag=cosmicsnake.ender_mine,distance=..82,limit=1] \
    if block ~ ~ ~ #air \
    if score @s cosmicsnake.health_pour matches ..65 \
    if predicate cosmicsnake:random/5 \
        run return run function cosmicsnake:boss/head/attack/execute {ID:7,duration:90}

# pointblank_shot
execute unless score @s cosmicsnake.attack_ID matches 5 \
    unless score @s cosmicsnake.attack_ID matches 9 \
    if score @s cosmicsnake.health_pour matches 51..90 \
    if entity @s[tag=!cosmicsnake.pointblank_shot] \
    if entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..116,limit=1] \
    if predicate cosmicsnake:random/25 \
        run return run function cosmicsnake:boss/head/attack/execute {ID:5,duration:100}
execute if score @s cosmicsnake.health_pour matches 45..50 \
    if entity @s[tag=!cosmicsnake.pointblank_shot] \
    if score @s cosmicsnake.energy matches 1250.. \
    if entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=..116,limit=1] \
    if predicate cosmicsnake:random/35 \
        run return run function cosmicsnake:boss/head/attack/execute {ID:5,duration:80}

# bite
execute if entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,tag=!cosmicsnake.immune,distance=..4] \
    if function cosmicsnake:boss/head/check_target_close_mouth \
        run return run function cosmicsnake:boss/head/attack/execute {ID:3,duration:40}

# servents if inside block
execute if score @s cosmicsnake.servents_count matches ..3 \
    if score @s cosmicsnake.health_pour matches ..85 \
    facing entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,tag=!cosmicsnake.immune,distance=..64] feet \
    unless block ^ ^ ^2 #minecraft:air \
        run return run function cosmicsnake:boss/head/attack/execute {ID:9,duration:30}

# big cosmic shot
execute unless score @s cosmicsnake.attack_ID matches 4 \
    if score @s cosmicsnake.energy matches 1250.. if entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=24..64,limit=1] \
    if predicate cosmicsnake:random/15 \
        run return run function cosmicsnake:boss/head/attack/execute {ID:4,duration:140}
execute unless score @s cosmicsnake.attack_ID matches 4 \
    if score @s cosmicsnake.health_pour matches ..51 if entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=12..64,limit=1] \
    if predicate cosmicsnake:random/15 \
        run return run function cosmicsnake:boss/head/attack/execute {ID:4,duration:140}

# mean_pointblank_shot
execute unless score @s cosmicsnake.attack_ID matches 6 \
    if score @s cosmicsnake.health_pour matches ..50 \
    positioned ^ ^ ^8 unless entity @e[type=minecraft:ghast,tag=cosmicsnake.segment_hitbox,distance=..8,limit=1] at @s \
    if entity @s[tag=!cosmicsnake.pointblank_shot] \
    if entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=12..38,limit=1] \
    if predicate cosmicsnake:random/30 \
        run return run function cosmicsnake:boss/head/attack/execute {ID:6,duration:360}

# cosmic shot
execute if score @s cosmicsnake.energy matches ..1249 if entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=18..64,limit=1] \
    if predicate cosmicsnake:random/30 run return run function cosmicsnake:boss/head/attack/execute {ID:2,duration:175}
execute if score @s cosmicsnake.energy matches 1250.. if entity @e[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=12..64,limit=1] \
    if predicate cosmicsnake:random/30 run return run function cosmicsnake:boss/head/attack/execute {ID:2,duration:175}

# servents - normal
execute unless score @s cosmicsnake.attack_ID matches 5 \
    unless score @s cosmicsnake.attack_ID matches 9 \
    if score @s cosmicsnake.health_pour matches ..85 \
    if score @s cosmicsnake.servents_count matches ..8 \
    if entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,distance=24..84] \
        run return run function cosmicsnake:boss/head/attack/execute {ID:9,duration:20}