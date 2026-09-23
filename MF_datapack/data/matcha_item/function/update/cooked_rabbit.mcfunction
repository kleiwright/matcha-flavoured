say <D> Triggered update function for cooked_rabbit
execute if predicate matcha_item:mainhand/cooked_rabbit run function matcha_item:mainhand/cooked_rabbit
execute if predicate matcha_item:offhand/cooked_rabbit run function matcha_item:offhand/cooked_rabbit
advancement revoke @s only matcha_item:trigger/cooked_rabbit