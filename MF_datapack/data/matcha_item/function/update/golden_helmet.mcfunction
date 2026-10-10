item modify entity @s armor.head matcha_item:modify/golden_helmet
data modify storage matcha_item:enchants held set from entity @s equipment.head.components.minecraft:enchantments
# processing enchantment minecraft:fire_protection / fire_protection 
execute store result score enchants_lvl_fire_protection item_updater run data get storage matcha_item:enchants held.'minecraft:fire_protection'
execute unless score enchants_lvl_fire_protection item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:fire_protection': 2}
function matcha_item:enchants/head with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/golden_helmet