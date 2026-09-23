say <D> Triggered update function for copper_spear
execute if predicate matcha_item:mainhand/copper_spear run function matcha_item:mainhand/copper_spear
execute if predicate matcha_item:offhand/copper_spear run function matcha_item:offhand/copper_spear
advancement revoke @s only matcha_item:trigger/copper_spear