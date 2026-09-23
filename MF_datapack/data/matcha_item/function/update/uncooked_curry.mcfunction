say <D> Triggered update function for uncooked_curry
execute if predicate matcha_item:mainhand/uncooked_curry run function matcha_item:mainhand/uncooked_curry
execute if predicate matcha_item:offhand/uncooked_curry run function matcha_item:offhand/uncooked_curry
advancement revoke @s only matcha_item:trigger/uncooked_curry