item modify entity @s armor.feet matcha_item:modify/leather_boots
data modify storage matcha_item:enchants held set from entity @s equipment.feet.components.minecraft:enchantments
# processing enchantment minecraft:feather_falling / feather_falling 
execute store result score enchants_lvl_feather_falling item_updater run data get storage matcha_item:enchants held.'minecraft:feather_falling'
execute unless score enchants_lvl_feather_falling item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:feather_falling': 2}
function matcha_item:enchants/feet with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/leather_boots