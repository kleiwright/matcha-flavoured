# Delayed trigger reset
schedule function matcha:mechanics/pet_whistle/revoke_summon_advancement 5s
# Return if not holding whistle
execute unless predicate matcha:items/is_pet_whistle run return fail

# Summon bound pets
execute at @s run function matcha:mechanics/pet_whistle/summon_from_tag with entity @s SelectedItem.components.minecraft:custom_data