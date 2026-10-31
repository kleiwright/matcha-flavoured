# Check ownership
execute if function matcha:mechanics/pet_whistle/check_ownership run return run function matcha:mechanics/pet_whistle/bind_fail_not_owner
data remove storage matcha:pet_whistle owner_UUID

# Add tag or communicate failed attempt
execute unless function matcha:mechanics/pet_whistle/add_tag run return run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 1
# Add Chunkloader
execute as @n[type=#matcha:pet_whistle_summons] run tag @s add chunkloader

# Communicate success
execute at @n[type=#matcha:pet_whistle_summons] run particle note ~ ~1 ~ 0 0 0 0 1
playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 1