say <D> Triggered update function for glass
execute if predicate matcha_item:mainhand/glass run function matcha_item:mainhand/glass
execute if predicate matcha_item:offhand/glass run function matcha_item:offhand/glass
advancement revoke @s only matcha_item:trigger/glass