say <D> Triggered update function for compound_bow
execute if predicate matcha_item:mainhand/compound_bow run function matcha_item:mainhand/compound_bow
execute if predicate matcha_item:offhand/compound_bow run function matcha_item:offhand/compound_bow
advancement revoke @s only matcha_item:trigger/compound_bow