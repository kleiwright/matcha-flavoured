say <D> Triggered update function for iron_spear
execute if predicate matcha_item:mainhand/iron_spear run function matcha_item:mainhand/iron_spear
execute if predicate matcha_item:offhand/iron_spear run function matcha_item:offhand/iron_spear
advancement revoke @s only matcha_item:trigger/iron_spear