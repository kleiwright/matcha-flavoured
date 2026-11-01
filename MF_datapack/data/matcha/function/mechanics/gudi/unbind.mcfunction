# Remove tag from pet or communicate failed attempt
execute unless function matcha:mechanics/gudi/remove_tag run return run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.5

# Remove Chunkloader
execute anchored eyes positioned ^ ^ ^1.5 run tag @n[type=#matcha:gudi_summons] remove chunkloader

# Communicate success
execute at @n[type=#matcha:gudi_summons] run particle smoke ~ ~1 ~ 0 0 0 0 1
playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.5
