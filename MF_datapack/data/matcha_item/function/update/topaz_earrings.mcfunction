item modify entity @s armor.head matcha_item:modify/topaz_earrings
data modify storage matcha_item:enchants held set from entity @s equipment.head.components.minecraft:enchantments
# processing enchantment matcha:haste / haste 
execute store result score enchants_lvl_haste item_updater run data get storage matcha_item:enchants held.'matcha:haste'
execute unless score enchants_lvl_haste item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:haste': 1}
function matcha_item:enchants/head with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/topaz_earrings