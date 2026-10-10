data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment minecraft:looting / looting 
execute store result score enchants_lvl_looting item_updater run data get storage matcha_item:enchants held.'minecraft:looting'
execute unless score enchants_lvl_looting item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:looting': 3}
item modify entity @s weapon.offhand matcha_item:modify/shepherds_shears
function matcha_item:enchants/offhand with storage matcha_item:enchants