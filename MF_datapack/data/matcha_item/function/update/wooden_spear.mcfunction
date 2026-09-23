say <D> Triggered update function for wooden_spear
execute if predicate matcha_item:mainhand/wooden_spear run function matcha_item:mainhand/wooden_spear
execute if predicate matcha_item:offhand/wooden_spear run function matcha_item:offhand/wooden_spear
advancement revoke @s only matcha_item:trigger/wooden_spear