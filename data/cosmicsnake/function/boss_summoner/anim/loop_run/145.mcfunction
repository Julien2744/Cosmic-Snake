execute as @e[type=minecraft:text_display,tag=cosmicsnake.boss_summoner.text,distance=..1,limit=5,sort=nearest] run data modify entity @s text.color set value "#26006a"
data modify entity @n[type=minecraft:block_display,tag=cosmicsnake.fake_beacon,distance=..1] glow_color_override set value 9776608
playsound minecraft:item.totem.use block @a[distance=..32] ~ ~ ~ 8 0
particle minecraft:dragon_breath ~ ~0.3 ~ 0 0 0 1 32
particle minecraft:reverse_portal ~ ~0.3 ~ 0 0 0 1 32
particle flash{color:[0.816,0.584,1.000,1.00]} ~ ~0.3 ~ 0 0 0 0 0