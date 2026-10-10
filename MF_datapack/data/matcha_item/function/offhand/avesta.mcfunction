data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment minecraft:efficiency / efficiency 
execute store result score enchants_lvl_efficiency item_updater run data get storage matcha_item:enchants held.'minecraft:efficiency'
execute unless score enchants_lvl_efficiency item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:efficiency': 2}
# processing enchantment minecraft:unbreaking / unbreaking 
execute store result score enchants_lvl_unbreaking item_updater run data get storage matcha_item:enchants held.'minecraft:unbreaking'
execute unless score enchants_lvl_unbreaking item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:unbreaking': 1}
item modify entity @s weapon.offhand matcha_item:modify/avesta
function matcha_item:enchants/offhand with storage matcha_item:enchants