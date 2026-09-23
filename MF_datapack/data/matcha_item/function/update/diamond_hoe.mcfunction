say <D> Triggered update function for diamond_hoe
execute if predicate matcha_item:mainhand/diamond_hoe run function matcha_item:mainhand/diamond_hoe
execute if predicate matcha_item:offhand/diamond_hoe run function matcha_item:offhand/diamond_hoe
advancement revoke @s only matcha_item:trigger/diamond_hoe