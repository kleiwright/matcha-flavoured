item modify entity @s armor.feet matcha_item:modify/sturdy_leather_boots
data modify storage matcha_item:enchants held set from entity @s equipment.feet.components.minecraft:enchantments
# processing enchantment minecraft:projectile_protection / projectile_protection 
execute store result score enchants_lvl_projectile_protection item_updater run data get storage matcha_item:enchants held.'minecraft:projectile_protection'
execute unless score enchants_lvl_projectile_protection item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:projectile_protection': 2}
# processing enchantment minecraft:feather_falling / feather_falling 
execute store result score enchants_lvl_feather_falling item_updater run data get storage matcha_item:enchants held.'minecraft:feather_falling'
execute unless score enchants_lvl_feather_falling item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:feather_falling': 2}
# processing enchantment matcha:traversal / traversal 
execute store result score enchants_lvl_traversal item_updater run data get storage matcha_item:enchants held.'matcha:traversal'
execute unless score enchants_lvl_traversal item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:traversal': 1}
function matcha_item:enchants/feet with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/sturdy_leather_boots