data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment minecraft:power / power 
execute store result score enchants_lvl_power item_updater run data get storage matcha_item:enchants held.'minecraft:power'
execute unless score enchants_lvl_power item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:power': 2}
item modify entity @s weapon.offhand matcha_item:modify/compound_bow
function matcha_item:enchants/offhand with storage matcha_item:enchants