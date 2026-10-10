data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment minecraft:fortune / fortune 
execute store result score enchants_lvl_fortune item_updater run data get storage matcha_item:enchants held.'minecraft:fortune'
execute unless score enchants_lvl_fortune item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:fortune': 1}
# processing enchantment minecraft:looting / looting 
execute store result score enchants_lvl_looting item_updater run data get storage matcha_item:enchants held.'minecraft:looting'
execute unless score enchants_lvl_looting item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:looting': 1}
item modify entity @s weapon.offhand matcha_item:modify/golden_axe
function matcha_item:enchants/offhand with storage matcha_item:enchants