# Runs every 0.5s as all non-enderpearls with chunkloader tag

# Move enderpearl with entity
$execute as @e[type=minecraft:ender_pearl, tag=chunkloader, nbt={Owner:$(UUID)}] run return run tp @s ~ 1000 ~
# If enderpearl not found, add new enderpearl
function matcha:mechanics/pet_whistle/add_chunkloader