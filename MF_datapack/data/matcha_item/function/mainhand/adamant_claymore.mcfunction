say <D> Updating mainhand for adamant_claymore
data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
item modify entity @s weapon.mainhand matcha_item:modify/adamant_claymore
# processing enchantment minecraft:unbreaking / unbreaking 
execute store result score enchants_lvl_unbreaking item_updater run data get storage matcha_item:enchants held.'minecraft:unbreaking'
execute unless score enchants_lvl_unbreaking item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:unbreaking': 2}
# processing enchantment matcha:adamant_weapon / adamant_weapon 
execute store result score enchants_lvl_adamant_weapon item_updater run data get storage matcha_item:enchants held.'matcha:adamant_weapon'
execute unless score enchants_lvl_adamant_weapon item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:adamant_weapon': 1}
# processing enchantment minecraft:sharpness / sharpness 
execute store result score enchants_lvl_sharpness item_updater run data get storage matcha_item:enchants held.'minecraft:sharpness'
execute unless score enchants_lvl_sharpness item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:sharpness': 1}
function matcha_item:enchants/mainhand with storage matcha_item:enchants