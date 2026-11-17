# remove_portal
$kill @n[type=item_display,tag=cosmicsnake.portal,nbt={data:{snake_ID:$(snake_ID)}},distance=..256]
playsound minecraft:item.goat_horn.sound.6 block @a ~ ~ ~ 128 0

# keep at end
# kill head
execute on vehicle if entity @s[tag=cosmicsnake.head_hitbox] run kill @s
function aj:cosmicsnake_head/remove/this
function cosmicsnake:remove_schedule