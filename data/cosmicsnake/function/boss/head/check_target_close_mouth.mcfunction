# execute as model

# remove tag
execute if entity @s[tag=cosmicsnake.locator_check.close] run tag @s remove cosmicsnake.locator_check.close

# use a tag as the return value
function aj:cosmicsnake_head/at_locator {\
    name:"mouth_middle",\
    command:"execute if entity @n[type=!#cosmicsnake:non_living,tag=cosmicsnake.target,tag=!cosmicsnake.immune,distance=..3.5] run tag @s add cosmicsnake.locator_check.close"\
}

# if true return 1
execute if entity @s[tag=cosmicsnake.locator_check.close] run return 1
# otherwise return fail
return fail