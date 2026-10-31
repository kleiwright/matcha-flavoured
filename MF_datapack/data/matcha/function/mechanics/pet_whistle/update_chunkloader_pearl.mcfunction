# Runs every 0.5s as all enderpearls with chunkloader tag

# If entity not found, remove enderpearl
$execute unless entity @e[type=!minecraft:ender_pearl, tag=chunkloader, nbt={UUID:$(Owner)}] run kill @s
