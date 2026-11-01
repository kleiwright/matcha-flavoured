# If without owner, check whether tamed
execute as @n[type=#matcha:amnestic_pets] unless data entity @s Owner if function matcha:mechanics/amnestic/check_pet_tame run return fail
# Check whether pet's Owner tag matches the player's UUID
data modify storage matcha:amnestic_pets owner_UUID set from entity @n[type=#matcha:amnestic_pets] Owner
return run data modify storage matcha:amnestic_pets owner_UUID set from entity @s UUID

# Returns false if ownership is valid