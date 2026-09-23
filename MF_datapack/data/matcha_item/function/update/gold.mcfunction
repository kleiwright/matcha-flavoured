say <D> Triggered update function for gold
execute if predicate matcha_item:mainhand/gold run function matcha_item:mainhand/gold
execute if predicate matcha_item:offhand/gold run function matcha_item:offhand/gold
advancement revoke @s only matcha_item:trigger/gold