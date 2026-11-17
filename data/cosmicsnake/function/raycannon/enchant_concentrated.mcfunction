enchant @s cosmicsnake:concentrated
playsound minecraft:block.smithing_table.use player @s ~ ~ ~ 1 0
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 2
execute if entity @s[gamemode=!creative,gamemode=!spectator] run item replace entity @s weapon.offhand with air
item modify entity @s weapon.mainhand cosmicsnake:raycannon_use
advancement grant @s only cosmicsnake:big_shot