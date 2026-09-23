say <D> Triggered update function for chocolate
execute if predicate matcha_item:mainhand/chocolate run function matcha_item:mainhand/chocolate
execute if predicate matcha_item:offhand/chocolate run function matcha_item:offhand/chocolate
advancement revoke @s only matcha_item:trigger/chocolate