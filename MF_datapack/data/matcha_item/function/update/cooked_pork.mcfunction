say <D> Triggered update function for cooked_pork
execute if predicate matcha_item:mainhand/cooked_pork run function matcha_item:mainhand/cooked_pork
execute if predicate matcha_item:offhand/cooked_pork run function matcha_item:offhand/cooked_pork
advancement revoke @s only matcha_item:trigger/cooked_pork