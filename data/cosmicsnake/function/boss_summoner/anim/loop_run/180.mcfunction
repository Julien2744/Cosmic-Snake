playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 16 0.6
playsound minecraft:item.goat_horn.sound.6 block @a ~ ~ ~ 16 0
kill @e[type=text_display,tag=cosmicsnake.boss_summoner.text,distance=..1,limit=5,sort=nearest]
summon minecraft:lightning_bolt ~ ~ ~
data modify entity @n[type=minecraft:block_display,tag=cosmicsnake.fake_beacon,distance=..1] Glowing set value 0b
execute positioned ~ ~64 ~ run function cosmicsnake:boss_summoner/summon_portal