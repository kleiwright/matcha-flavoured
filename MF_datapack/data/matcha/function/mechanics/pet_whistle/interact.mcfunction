# Reset trigger
advancement revoke @s only matcha:mechanics/pet_whistle_interact
# Return if not holding whistle
execute unless predicate matcha:items/is_pet_whistle run return fail

# Ensure whistle has an id
execute unless data entity @s SelectedItem.components.minecraft:custom_data.whistleId run function matcha:mechanics/pet_whistle/assign_whistle_id

# Reroute to unbind function if sneaking
execute if predicate matcha:flags/is_sneaking anchored eyes positioned ^ ^ ^1.5 run return run function matcha:mechanics/pet_whistle/unbind
# Otherwise, run bind function
execute anchored eyes positioned ^ ^ ^1.5 run return run function matcha:mechanics/pet_whistle/bind