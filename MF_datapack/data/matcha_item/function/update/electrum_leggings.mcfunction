item modify entity @s armor.legs matcha_item:modify/electrum_leggings
data modify storage matcha_item:enchants held set from entity @s equipment.legs.components.minecraft:enchantments
# processing enchantment matcha:electrum_armour / electrum_armour 
execute store result score enchants_lvl_electrum_armour item_updater run data get storage matcha_item:enchants held.'matcha:electrum_armour'
execute unless score enchants_lvl_electrum_armour item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:electrum_armour': 1}
function matcha_item:enchants/legs with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/electrum_leggings