say <D> Updating offhand for adamant_sword
data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
item modify entity @s weapon.offhand matcha_item:modify/adamant_sword
# processing enchantment minecraft:sharpness / sharpness 
execute store result score enchants_lvl_sharpness item_updater run data get storage matcha_item:enchants held.'minecraft:sharpness'
execute unless score enchants_lvl_sharpness item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:sharpness': 1}
# processing enchantment matcha:adamant_weapon / adamant_weapon 
execute store result score enchants_lvl_adamant_weapon item_updater run data get storage matcha_item:enchants held.'matcha:adamant_weapon'
execute unless score enchants_lvl_adamant_weapon item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:adamant_weapon': 1}
# processing enchantment minecraft:unbreaking / unbreaking 
execute store result score enchants_lvl_unbreaking item_updater run data get storage matcha_item:enchants held.'minecraft:unbreaking'
execute unless score enchants_lvl_unbreaking item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:unbreaking': 2}
function matcha_item:enchants/offhand with storage matcha_item:enchants