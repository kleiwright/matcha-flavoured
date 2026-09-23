say <D> Triggered update function for salmon
execute if predicate matcha_item:mainhand/salmon run function matcha_item:mainhand/salmon
execute if predicate matcha_item:offhand/salmon run function matcha_item:offhand/salmon
advancement revoke @s only matcha_item:trigger/salmon