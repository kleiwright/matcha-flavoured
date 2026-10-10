item modify entity @s armor.head matcha_item:modify/ruby_circlet
data modify storage matcha_item:enchants held set from entity @s equipment.head.components.minecraft:enchantments
# processing enchantment matcha:fire_proof / fire_proof 
execute store result score enchants_lvl_fire_proof item_updater run data get storage matcha_item:enchants held.'matcha:fire_proof'
execute unless score enchants_lvl_fire_proof item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:fire_proof': 1}
function matcha_item:enchants/head with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/ruby_circlet