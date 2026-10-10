item modify entity @s armor.legs matcha_item:modify/steel_leggings
data modify storage matcha_item:enchants held set from entity @s equipment.legs.components.minecraft:enchantments
# processing enchantment minecraft:blast_protection / blast_protection 
execute store result score enchants_lvl_blast_protection item_updater run data get storage matcha_item:enchants held.'minecraft:blast_protection'
execute unless score enchants_lvl_blast_protection item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:blast_protection': 3}
function matcha_item:enchants/legs with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/steel_leggings