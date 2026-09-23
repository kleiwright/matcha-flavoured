say <D> Triggered update function for stone
execute if predicate matcha_item:mainhand/stone run function matcha_item:mainhand/stone
execute if predicate matcha_item:offhand/stone run function matcha_item:offhand/stone
advancement revoke @s only matcha_item:trigger/stone