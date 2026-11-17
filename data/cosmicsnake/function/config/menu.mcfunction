# link color : #005FEE
# ⓘ

function cosmicsnake:config/filler

function cosmicsnake:initialisation/update_gamerule

# title
tellraw @s [{"bold":true,"color":"#000000","shadow_color":-10484053,"text":"🐍"},{"bold":true,"color":"#000000","shadow_color":-10484053,"text":" Cosmic Snake config"},{"bold":false,"color":"gray","shadow_color":0,"text":" beta-1.0"},{"bold":true,"color":"#000000","shadow_color":-10484053,"text":" 🐍"}]
tellraw @s [{"text":" "}]

# hp_multiplyer
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"♥ "},{"color":"white","text":"Health multiplyer : "},{"click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/hp_multiplyer {value:...}"},"color":"#005FEE","nbt":"hp_multiplyer","storage":"cosmicsnake:global","underlined":true}," ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Boss have a base of 1000hp"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

# dmg_multiplyer
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🗡 "},{"color":"white","text":"Damage multiplyer : "},{"click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/dmg_multiplyer {value:...}"},"color":"#005FEE","nbt":"dmg_multiplyer","storage":"cosmicsnake:global","underlined":true}," ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Damge dealt can vary between attacks"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

# move_speed
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"⚡ "},{"color":"white","text":"Move speed : "},{"click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/move_speed {value:...}"},"color":"#005FEE","nbt":"move_speed","storage":"cosmicsnake:global","underlined":true}," ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"How many block/tick a segment can move"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

# boss_drop_block
execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \
    if score #cosmicsnake.config cosmicsnake.config.boss_drop_block matches 0 \
        run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Boss breaking drop blocks : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/boss_drop_block {value:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"When the boss break block, should it drop it as an item\nAffected by gamerule block_drops"}]},"text":"ⓘ"}]
execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 1 \ 
    if score #cosmicsnake.config cosmicsnake.config.boss_drop_block matches 1 \
        run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Boss breaking drop blocks : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/boss_drop_block {value:0}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"When the boss break block, should it drop it as an item\nAffected by gamerule block_drops"}]},"text":"ⓘ"}]
execute if score #cosmicsnake.global cosmicsnake.gamerule.mob_griefing matches 0 \ 
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Boss breaking drop blocks : "},{"atlas":"minecraft:gui","color":"white","sprite":"widget/checkbox_highlighted"},{"color":"gray","italic":true,"text":" gamerule mob_griefing is set to false"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"When the boss break block, should it drop it as an item\nAffected by gamerule block_drops"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

# segment_count
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"⛓ "},{"color":"white","text":"Segment count : "},{"click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/segment_count {value:...}"},"color":"#005FEE","score":{"name":"#cosmicsnake.config","objective":"cosmicsnake.config.segment_count"},"underlined":true}," ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"How many segments does the boss have"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

# max_segment_tick
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"⛓ "},{"color":"white","text":"Max segment tick : "},{"click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/max_segment_tick {value:...}"},"color":"#005FEE","score":{"name":"#cosmicsnake.config","objective":"cosmicsnake.config.max_segment_tick"},"underlined":true}," ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"How many segments can the boss tick at once\nThis setting also affect the boss speed and how janky his movement is\nHigher number can lead to some lag"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

# bossbar
execute if score #cosmicsnake.config cosmicsnake.config.bossbar matches 0 \
        run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🔋 "},{"color":"white","text":"Bossbar : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/bossbar {value:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Toggle boss bossbar"}]},"text":"ⓘ"}]
execute if score #cosmicsnake.config cosmicsnake.config.bossbar matches 1 \
        run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🔋 "},{"color":"white","text":"Bossbar : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function cosmicsnake:config/set/bossbar {value:0}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Toggle boss bossbar"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]
