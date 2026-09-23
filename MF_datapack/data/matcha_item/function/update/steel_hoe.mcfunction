say <D> Triggered update function for steel_hoe
execute if predicate matcha_item:mainhand/steel_hoe run function matcha_item:mainhand/steel_hoe
execute if predicate matcha_item:offhand/steel_hoe run function matcha_item:offhand/steel_hoe
advancement revoke @s only matcha_item:trigger/steel_hoe