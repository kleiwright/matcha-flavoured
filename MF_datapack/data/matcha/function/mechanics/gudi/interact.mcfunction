# Reset trigger
advancement revoke @s only matcha:mechanics/gudi_interact
# Retrieve from entity equipment
execute anchored eyes positioned ^ ^ ^1.5 if entity @n[type=#matcha:gudi_summons, distance=..5, predicate=matcha:mob_checks/equipped_gudi] run function matcha:mechanics/gudi/retrieve_from_head
# Return if not holding whistle
execute unless predicate matcha:items/is_gudi run return fail

# Ensure whistle has an id
execute unless data entity @s SelectedItem.components.minecraft:custom_data.whistleId run function matcha:mechanics/gudi/assign_whistle_id

# Reroute to unbind function if sneaking
execute if predicate matcha:flags/is_sneaking anchored eyes positioned ^ ^ ^1.5 run return run function matcha:mechanics/gudi/unbind
# Otherwise, run bind function
execute anchored eyes positioned ^ ^ ^1.5 run return run function matcha:mechanics/gudi/bind