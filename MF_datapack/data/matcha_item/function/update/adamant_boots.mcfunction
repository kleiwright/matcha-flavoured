item modify entity @s armor.feet matcha_item:modify/adamant_boots
data modify storage matcha_item:enchants held set from entity @s equipment.feet.components.minecraft:enchantments
# processing enchantment matcha:adamant_armour / adamant_armour 
execute store result score enchants_lvl_adamant_armour item_updater run data get storage matcha_item:enchants held.'matcha:adamant_armour'
execute unless score enchants_lvl_adamant_armour item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:adamant_armour': 1}
# processing enchantment minecraft:unbreaking / unbreaking 
execute store result score enchants_lvl_unbreaking item_updater run data get storage matcha_item:enchants held.'minecraft:unbreaking'
execute unless score enchants_lvl_unbreaking item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:unbreaking': 2}
# processing enchantment minecraft:protection / protection 
execute store result score enchants_lvl_protection item_updater run data get storage matcha_item:enchants held.'minecraft:protection'
execute unless score enchants_lvl_protection item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:protection': 1}
function matcha_item:enchants/feet with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/adamant_boots