item modify entity @s armor.legs matcha_item:modify/chainmail_leggings
data modify storage matcha_item:enchants held set from entity @s equipment.legs.components.minecraft:enchantments
# processing enchantment minecraft:thorns / thorns 
execute store result score enchants_lvl_thorns item_updater run data get storage matcha_item:enchants held.'minecraft:thorns'
execute unless score enchants_lvl_thorns item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:thorns': 3}
function matcha_item:enchants/legs with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/chainmail_leggings