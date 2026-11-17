$execute if entity @s[type=item_display,tag=aj.cosmicsnake_head.root] on vehicle run damage @n[type=!#cosmicsnake:non_living,distance=..0.5] $(damage) cosmicsnake:desintegrated by @s
$execute unless entity @s[type=item_display,tag=aj.cosmicsnake_head.root] run damage @n[type=!#cosmicsnake:non_living,distance=..0.5] $(damage) cosmicsnake:desintegrated

particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.creaking.freeze hostile @a[distance=..8] ~ ~ ~ 1 0