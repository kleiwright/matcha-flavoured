data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment minecraft:loyalty / loyalty 
execute store result score enchants_lvl_loyalty item_updater run data get storage matcha_item:enchants held.'minecraft:loyalty'
execute unless score enchants_lvl_loyalty item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:loyalty': 3}
# processing enchantment matcha:traversal / traversal 
execute store result score enchants_lvl_traversal item_updater run data get storage matcha_item:enchants held.'matcha:traversal'
execute unless score enchants_lvl_traversal item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'matcha:traversal': 3}
# processing enchantment minecraft:power / power 
execute store result score enchants_lvl_power item_updater run data get storage matcha_item:enchants held.'minecraft:power'
execute unless score enchants_lvl_power item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:power': 2}
item modify entity @s weapon.offhand matcha_item:modify/tanakh
function matcha_item:enchants/offhand with storage matcha_item:enchants