say <D> Triggered update function for golden_compass
execute if predicate matcha_item:mainhand/golden_compass run function matcha_item:mainhand/golden_compass
execute if predicate matcha_item:offhand/golden_compass run function matcha_item:offhand/golden_compass
advancement revoke @s only matcha_item:trigger/golden_compass