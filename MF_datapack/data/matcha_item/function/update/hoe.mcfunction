say <D> Triggered update function for hoe
execute if predicate matcha_item:mainhand/hoe run function matcha_item:mainhand/hoe
execute if predicate matcha_item:offhand/hoe run function matcha_item:offhand/hoe
advancement revoke @s only matcha_item:trigger/hoe