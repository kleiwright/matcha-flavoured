say <D> Triggered update function for warding_stone
execute if predicate matcha_item:mainhand/warding_stone run function matcha_item:mainhand/warding_stone
execute if predicate matcha_item:offhand/warding_stone run function matcha_item:offhand/warding_stone
advancement revoke @s only matcha_item:trigger/warding_stone