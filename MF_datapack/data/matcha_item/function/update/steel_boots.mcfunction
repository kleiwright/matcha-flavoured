item modify entity @s armor.feet matcha_item:modify/steel_boots
data modify storage matcha_item:enchants held set from entity @s equipment.feet.components.minecraft:enchantments
# processing enchantment minecraft:blast_protection / blast_protection 
execute store result score enchants_lvl_blast_protection item_updater run data get storage matcha_item:enchants held.'minecraft:blast_protection'
execute unless score enchants_lvl_blast_protection item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:blast_protection': 2}
function matcha_item:enchants/feet with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/steel_boots