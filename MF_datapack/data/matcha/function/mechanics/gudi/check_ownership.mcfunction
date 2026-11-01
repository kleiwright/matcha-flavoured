# Check whether pet's Owner tag matches the player's UUID
execute as @n[type=#matcha:gudi_summons] if data entity @s Tame unless data entity @s Owner run return 1
data modify storage matcha:gudi owner_UUID set from entity @n[type=#matcha:gudi_summons] Owner
return run data modify storage matcha:gudi owner_UUID set from entity @s UUID