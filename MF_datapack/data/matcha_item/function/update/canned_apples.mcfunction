say <D> Triggered update function for canned_apples
execute if predicate matcha_item:mainhand/canned_apples run function matcha_item:mainhand/canned_apples
execute if predicate matcha_item:offhand/canned_apples run function matcha_item:offhand/canned_apples
advancement revoke @s only matcha_item:trigger/canned_apples