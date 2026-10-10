item modify entity @s armor.chest matcha_item:modify/chainmail_chestplate
data modify storage matcha_item:enchants held set from entity @s equipment.chest.components.minecraft:enchantments
# processing enchantment minecraft:thorns / thorns 
execute store result score enchants_lvl_thorns item_updater run data get storage matcha_item:enchants held.'minecraft:thorns'
execute unless score enchants_lvl_thorns item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:thorns': 3}
function matcha_item:enchants/chest with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/chainmail_chestplate