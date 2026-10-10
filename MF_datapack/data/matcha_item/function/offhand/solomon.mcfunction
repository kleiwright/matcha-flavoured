data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment minecraft:mending / mending 
execute store result score enchants_lvl_mending item_updater run data get storage matcha_item:enchants held.'minecraft:mending'
execute unless score enchants_lvl_mending item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:mending': 1}
item modify entity @s weapon.offhand matcha_item:modify/solomon
function matcha_item:enchants/offhand with storage matcha_item:enchants