say <D> Triggered update function for cooked_salmon
execute if predicate matcha_item:mainhand/cooked_salmon run function matcha_item:mainhand/cooked_salmon
execute if predicate matcha_item:offhand/cooked_salmon run function matcha_item:offhand/cooked_salmon
advancement revoke @s only matcha_item:trigger/cooked_salmon