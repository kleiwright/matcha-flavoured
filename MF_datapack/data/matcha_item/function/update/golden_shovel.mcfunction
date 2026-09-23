say <D> Triggered update function for golden_shovel
execute if predicate matcha_item:mainhand/golden_shovel run function matcha_item:mainhand/golden_shovel
execute if predicate matcha_item:offhand/golden_shovel run function matcha_item:offhand/golden_shovel
advancement revoke @s only matcha_item:trigger/golden_shovel