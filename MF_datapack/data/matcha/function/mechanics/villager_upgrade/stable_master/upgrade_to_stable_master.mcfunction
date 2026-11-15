# Summon Baby Horse
summon minecraft:horse ~ ~ ~ {Age:-12000,Variant:300,equipment:{saddle:{id:"minecraft:saddle",count:1}}}
data modify entity @n[type=horse] leash.UUID set from entity @s UUID
tag @s add stable_master
tag @s add upgrading_to_stable_master

# Removing the recipes kicks the player out of the GUI, and the function resets the recipes. THIS MUST BE DONE
# If you remove the recipes while the player is looking at the GUI, the game crashes, idk why
data remove entity @s Offers.Recipes
data modify entity @s VillagerData.level set value 0
data modify entity @s VillagerData.level set value 0
data modify entity @s Xp set value 0
# Remove Offers
schedule function matcha:mechanics/villager_upgrade/stable_master/remove_offers 1s