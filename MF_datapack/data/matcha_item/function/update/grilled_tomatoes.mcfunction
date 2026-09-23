say <D> Triggered update function for grilled_tomatoes
execute if predicate matcha_item:mainhand/grilled_tomatoes run function matcha_item:mainhand/grilled_tomatoes
execute if predicate matcha_item:offhand/grilled_tomatoes run function matcha_item:offhand/grilled_tomatoes
advancement revoke @s only matcha_item:trigger/grilled_tomatoes