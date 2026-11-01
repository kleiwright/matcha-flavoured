# Delayed trigger reset
schedule function matcha:mechanics/gudi/revoke_summon_advancement 5s
# Return if not holding whistle
execute unless predicate matcha:items/is_gudi run return fail

# Display a note particle
particle note ^ ^1.5 ^1 0 0 0 1 1
# Check which sound to display (Goat horns cannot play custom sounds, this is my loophole for that)
execute as @s run function matcha:mechanics/gudi/play_song

# Summon bound pets
execute at @s run function matcha:mechanics/gudi/summon_from_tag with entity @s SelectedItem.components.minecraft:custom_data