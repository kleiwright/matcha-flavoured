item modify entity @s armor.head matcha_item:modify/amber_earrings
data modify storage matcha_item:enchants held set from entity @s equipment.head.components.minecraft:enchantments
# processing enchantment matcha:regeneration / regeneration 
execute store result score enchants_lvl_regeneration item_updater run data get storage matcha_item:enchants held.'matcha:regeneration'
execute unless score enchants_lvl_regeneration item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:regeneration': 1}
function matcha_item:enchants/head with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/amber_earrings