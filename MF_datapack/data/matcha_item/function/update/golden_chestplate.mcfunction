item modify entity @s armor.chest matcha_item:modify/golden_chestplate
data modify storage matcha_item:enchants held set from entity @s equipment.chest.components.minecraft:enchantments
# processing enchantment minecraft:fire_protection / fire_protection 
execute store result score enchants_lvl_fire_protection item_updater run data get storage matcha_item:enchants held.'minecraft:fire_protection'
execute unless score enchants_lvl_fire_protection item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:fire_protection': 3}
function matcha_item:enchants/chest with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/golden_chestplate