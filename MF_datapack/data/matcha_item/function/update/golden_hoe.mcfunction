say <D> Triggered update function for golden_hoe
execute if predicate matcha_item:mainhand/golden_hoe run function matcha_item:mainhand/golden_hoe
execute if predicate matcha_item:offhand/golden_hoe run function matcha_item:offhand/golden_hoe
advancement revoke @s only matcha_item:trigger/golden_hoe