item modify entity @s armor.head matcha_item:modify/sturdy_leather_helmet
data modify storage matcha_item:enchants held set from entity @s equipment.head.components.minecraft:enchantments
# processing enchantment minecraft:projectile_protection / projectile_protection 
execute store result score enchants_lvl_projectile_protection item_updater run data get storage matcha_item:enchants held.'minecraft:projectile_protection'
execute unless score enchants_lvl_projectile_protection item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:projectile_protection': 3}
function matcha_item:enchants/head with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/sturdy_leather_helmet