say <D> Triggered update function for cooked_mutton
execute if predicate matcha_item:mainhand/cooked_mutton run function matcha_item:mainhand/cooked_mutton
execute if predicate matcha_item:offhand/cooked_mutton run function matcha_item:offhand/cooked_mutton
advancement revoke @s only matcha_item:trigger/cooked_mutton