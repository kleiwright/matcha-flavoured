say <D> Triggered update function for tomato
execute if predicate matcha_item:mainhand/tomato run function matcha_item:mainhand/tomato
execute if predicate matcha_item:offhand/tomato run function matcha_item:offhand/tomato
advancement revoke @s only matcha_item:trigger/tomato