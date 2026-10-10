item modify entity @s armor.head matcha_item:modify/chainmail_helmet
data modify storage matcha_item:enchants held set from entity @s equipment.head.components.minecraft:enchantments
# processing enchantment minecraft:thorns / thorns 
execute store result score enchants_lvl_thorns item_updater run data get storage matcha_item:enchants held.'minecraft:thorns'
execute unless score enchants_lvl_thorns item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:thorns': 3}
function matcha_item:enchants/head with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/chainmail_helmet