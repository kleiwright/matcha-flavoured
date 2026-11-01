# Check ownership
execute if function matcha:mechanics/gudi/check_ownership run return run function matcha:mechanics/gudi/bind_fail_not_owner
data remove storage matcha:gudi owner_UUID

# Add tag or communicate failed attempt
execute unless function matcha:mechanics/gudi/add_tag run return run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 1

# Add Chunkloader
execute as @n[type=#matcha:gudi_summons] run tag @s add chunkloader

# Communicate success
execute at @n[type=#matcha:gudi_summons] run particle note ~ ~1 ~ .3 .2 .3 1 2
execute as @s run function matcha:mechanics/gudi/play_song