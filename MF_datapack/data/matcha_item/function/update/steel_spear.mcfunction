say <D> Triggered update function for steel_spear
execute if predicate matcha_item:mainhand/steel_spear run function matcha_item:mainhand/steel_spear
execute if predicate matcha_item:offhand/steel_spear run function matcha_item:offhand/steel_spear
advancement revoke @s only matcha_item:trigger/steel_spear