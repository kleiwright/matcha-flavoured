item modify entity @s armor.chest matcha_item:modify/sturdy_leather_chestplate
data modify storage matcha_item:enchants held set from entity @s equipment.chest.components.minecraft:enchantments
# processing enchantment minecraft:projectile_protection / projectile_protection 
execute store result score enchants_lvl_projectile_protection item_updater run data get storage matcha_item:enchants held.'minecraft:projectile_protection'
execute unless score enchants_lvl_projectile_protection item_updater matches 4.. run data modify storage matcha_item:enchants held merge value {'minecraft:projectile_protection': 4}
function matcha_item:enchants/chest with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/sturdy_leather_chestplate